/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "tiny_fixed.h"

#define NROUND1 5
#define NROUND2 8

#define FrameBitsIV  0x10
#define FrameBitsAD  0x30
#define FrameBitsPC  0x50  //Framebits for plaintext/ciphertext
#define FrameBitsFinalization 0x70

void state_update(unsigned int* state, const unsigned char* key, unsigned int steps) {

	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG0_OFFSET, state[0]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG1_OFFSET, state[1]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG2_OFFSET, state[2]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG3_OFFSET, state[3]);

	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG4_OFFSET, ((unsigned int*)key)[0]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG5_OFFSET, ((unsigned int*)key)[1]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG6_OFFSET, ((unsigned int*)key)[2]);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG7_OFFSET, ((unsigned int*)key)[3]);

	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG8_OFFSET, steps);

	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG9_OFFSET, 0x00000001);
	TINY_FIXED_mWriteReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG9_OFFSET, 0x00000000);

	while ((TINY_FIXED_mReadReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG14_OFFSET) && 0x00000001) == 0) {

	}
	state[0] = TINY_FIXED_mReadReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG10_OFFSET);
	state[1] = TINY_FIXED_mReadReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG11_OFFSET);
	state[2] = TINY_FIXED_mReadReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG12_OFFSET);
	state[3] = TINY_FIXED_mReadReg(0x44a00000, TINY_FIXED_S00_AXI_SLV_REG13_OFFSET);
}


// The initialization
/* The input to initialization is the 128-bit key; 96-bit IV;*/
void initialization(const unsigned char *key, const unsigned char *iv, unsigned int *state)
{
        int i;

        //initialize the state as 0
        for (i = 0; i < 4; i++) state[i] = 0;

        //update the state with the key
        state_update(state, key, NROUND2);

        //introduce IV into the state
        for (i = 0;  i < 3; i++)
        {
                state[1] ^= FrameBitsIV;
                state_update(state, key, NROUND1);
                state[3] ^= ((unsigned int*)iv)[i];
        }
}

//process the associated data
void process_ad(const unsigned char *k, const unsigned char *ad, unsigned long long adlen, unsigned int *state)
{
        unsigned long long i;
        unsigned int j;

        for (i = 0; i < (adlen >> 2); i++)
        {
                state[1] ^= FrameBitsAD;
                state_update(state, k, NROUND1);
                state[3] ^= ((unsigned int*)ad)[i];
        }

        // if adlen is not a multiple of 4, we process the remaining bytes
        if ((adlen & 3) > 0)
        {
                state[1] ^= FrameBitsAD;
                state_update(state, k, NROUND1);
                for (j = 0; j < (adlen & 3); j++)  ((unsigned char*)state)[12 + j] ^= ad[(i << 2) + j];
                state[1] ^= adlen & 3;
        }
}

//encrypt plaintext
int crypto_aead_encrypt(
	unsigned char *c, unsigned long long *clen,
	const unsigned char *m, unsigned long long mlen,
	const unsigned char *ad, unsigned long long adlen,
	const unsigned char *nsec,
	const unsigned char *npub,
	const unsigned char *k
)
{
        unsigned long long i;
        unsigned int j;
        unsigned char mac[8];
        unsigned int state[4];

        //initialization stage
        initialization(k, npub, state);

        //process the associated data
        process_ad(k, ad, adlen, state);

        //process the plaintext
        for (i = 0; i < (mlen >> 2); i++)
        {
                state[1] ^= FrameBitsPC;
                state_update(state, k, NROUND2);
                state[3] ^= ((unsigned int*)m)[i];
                ((unsigned int*)c)[i] = state[2] ^ ((unsigned int*)m)[i];
        }
        // if mlen is not a multiple of 4, we process the remaining bytes
        if ((mlen & 3) > 0)
        {
                state[1] ^= FrameBitsPC;
                state_update(state, k, NROUND2);
                for (j = 0; j < (mlen & 3); j++)
                {
                        ((unsigned char*)state)[12 + j] ^= m[(i << 2) + j];
                        c[(i << 2) + j] = ((unsigned char*)state)[8 + j] ^ m[(i << 2) + j];
                }
                state[1] ^= mlen & 3;
        }

        //finalization stage, we assume that the tag length is 8 bytes
        state[1] ^= FrameBitsFinalization;
        state_update(state, k, NROUND2);
        ((unsigned int*)mac)[0] = state[2];

        state[1] ^= FrameBitsFinalization;
        state_update(state, k, NROUND1);
        ((unsigned int*)mac)[1] = state[2];

        *clen = mlen + 8;
        for (j = 0; j < 8; j++) c[mlen+j] = mac[j];

        return 0;
}

//decrypt a message
int crypto_aead_decrypt(
	unsigned char *m, unsigned long long *mlen,
	unsigned char *nsec,
	const unsigned char *c, unsigned long long clen,
	const unsigned char *ad, unsigned long long adlen,
	const unsigned char *npub,
	const unsigned char *k
)
{
        unsigned long long i;
        unsigned int j, check = 0;
        unsigned char mac[8];
        unsigned int state[4];

        *mlen = clen - 8;

        //initialization stage
        initialization(k, npub, state);

        //process the associated data
        process_ad(k, ad, adlen, state);

        //process the ciphertext
        for (i = 0; i < (*mlen >> 2); i++)
        {
                state[1] ^= FrameBitsPC;
                state_update(state, k, NROUND2);
                ((unsigned int*)m)[i] = state[2] ^ ((unsigned int*)c)[i];
                state[3] ^= ((unsigned int*)m)[i];
        }
        // if mlen is not a multiple of 4, we process the remaining bytes
        if ((*mlen & 3) > 0)
        {
                state[1] ^= FrameBitsPC;
                state_update(state, k, NROUND2);
                for (j = 0; j < (*mlen & 3); j++)
                {
                        m[(i << 2) + j] = c[(i << 2) + j] ^ ((unsigned char*)state)[8 + j];
                        ((unsigned char*)state)[12 + j] ^= m[(i << 2) + j];
                }
                state[1] ^= *mlen & 3;
        }

        //finalization stage, we assume that the tag length is 8 bytes
        state[1] ^= FrameBitsFinalization;
        state_update(state, k, NROUND2);
        ((unsigned int*)mac)[0] = state[2];

        state[1] ^= FrameBitsFinalization;
        state_update(state, k, NROUND1);
        ((unsigned int*)mac)[1] = state[2];

        //verification of the authentication tag
        for (j = 0; j < 8; j++) { check |= (mac[j] ^ c[clen - 8 + j]); }
        if (check == 0) return 0;
        else return -1;
}

void test_encrypt_decrypt() {
//    unsigned int state[4] = {0, 0, 0, 0};
    const unsigned char key[16] = {0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F};
    const unsigned char npub[12] = {0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B};
    unsigned char c[80];
    unsigned long long clen = 0;
    unsigned char m[80] = {"abcd"};
    unsigned long long mlen = 4;
    unsigned char ad[80];
    unsigned char adlen = 0;
    unsigned char nsec[80] = {};

    print("Running encrypt\n");
    crypto_aead_encrypt(
        c, &clen,
        m, mlen,
        ad, adlen,
        nsec,
        npub,
        key);
//    xil_printf("clen is: %d \n", (unsigned int)clen);
//    for (size_t i = 0; i < clen; i++)
//    {
//    	xil_printf("%02X \n", c[i]);
//    }
    print("Running decrypt\n");
    if (crypto_aead_decrypt(m, &mlen, nsec, c, clen, ad, adlen, npub, key) == 0)
    {
        print("v\n");
    } else {
    	print("!v\n");
    }
}
int main()
{
    init_platform();
    print("Hello World\n\r");
//    print("Successfully ran Hello World application");
    for (int i = 0; i < 100000; i++) {
    	test_encrypt_decrypt();
    }
    cleanup_platform();
    return 0;
}
