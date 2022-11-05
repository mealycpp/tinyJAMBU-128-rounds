// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Fri Nov  4 22:42:39 2022
// Host        : LAPTOP-L4R3AOA2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/axi_FSR_128_N.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_sim_netlist.v
// Design      : design_1_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lmb_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module design_1_lmb_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_lmb_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_lmb_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rwYdhNNJ53nPphbLvD77j21Oeonbq6Z0erAiqk1RpPXb0zp7pHBtqKJw2C5LzglScReglQK59vz1
e9nFqqqDUxPf09eNrABSjjyDdXG5nvsvptpVnGf3CRCuzW+BAOmx1NfRIwF2CnQO14BklTUJNi44
Dn7FcUkW0a4jUsV5mW0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ECFh14XLZtdbJi0fMKhe373qBJ/VQeNvJfLsF29/k8lNiDltxMI/hw4N8eayMNU19NYT80nndeu4
b4GE5EogbeMZIyu4Qcr4BB27Zuf9xbMlyuLyuRxoP6fL/eDsdEfc77rluuayTPUvFb07ZGq8myXt
w6+Re9sDG/xabZOZelcQN9yU3kzn9wk5mOm/6P0adRmwTBPuVEnpoppskA5nqDk0UpZ02ziITfp+
2J6kzsZjQCqgAbcj+BpiPGs0n5x+cwL1D93iVy0SNuh5lUafOyzNjAaOXVqPDjw96RZjdhGSYpOL
2dXKgqr3joOjpVMLGW3isCNSsZEe/4V7KKiZnA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VrO5fv2mXVBtwSRHdYHeDI+bGCTzz5uuC48jX9sVTvrCxt2koF8MsmjeeYrC7UZ6RRRZ3zzgXD0c
l3ghcUOMI6oWxyi48FT3M+Nu4RVBBmEQrDAOat8owqPVE3ozzqBYv1s5gfQ3L2bI3D7/yaS7LivV
Pb8qlaO7PuMFyP02eJw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IRu0p6C0L+AS2viaIAbi/TDCeVzss0yEzVqUS1b4tKdGmvxkd+S+qyPW9gG0i6LkZlDD1xSobE6V
0og/wz7lUuGVcQaKnHiHXsYUklzME+MjwbMlMT1SJWWHVTjhcm88ItccTThRIXT/P8pkgx2SUdsz
WX7EqTD3lVF18LFSMSY/s2nLMR3pe2vAsQFR69oC8uYHX+4hU00GEoHLNSLRnK1iwb/PkArDOdRu
/DM2GYBulBB39GwYqqaSmcCKQ1tIHUa6y2ffLsJqWIzY+NFu9ZsMn//HBZTtQODKuufJB5iagxpq
u85V8dfguTBDdfOcO/fDhG2A2EyY0Zu3S2GSiQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H/I+AHHeY8qJXTVA3X8DYTeCjAB35iG/LGdUhoM/Y4CDrM44fGEsFPP0ZbuSuZg/xZvDhkCBslxX
VAe/feUvtziL0kL+CIvCJtYJIWiHLEnNT2UXimYNR8yN84Z2/6444oZaAGvO0CEYnWpvgMYbs4zj
AmbC2Gd29yqEChWTsEsiEvEBXH0otAp98Z9Y+XKN+X6oterbhzzSz/QKCbYGjm4x+cSHutlTGVq3
nHieAszAMNPhqJVXof9EAQZoY3Iyo1U6gY39eKIZWd2h0Agl8YPwm1936n3md/c6nnujGUMhEKCC
UIPIjLDop06G88p+gRMlPBZ5ndgFFKyUWVF4EQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fKqSi9wP3ZeVSKI+0RVmajc0tn4Q+JUGHUpXla85NhP4hNOdB0SCI3C/2YXCEgx7UPg8+RMFUs/K
wLZA84vKtQ3BWlRw1VHLjsFgid1L/Jmd+QPyrJGyekykTAAfmkw66RQfETXPmtE7Ee31npye9L2y
jIYM74AVUotjRoALQcAohBD+IeG3+AL5FyYxMx9zP84rrM8vUAiHI9R8eswrRlAH/pY2VcptGUgs
3K/03V4nWUFWLAwt83HlJjveZY08KeQBe+Pg3OHiSseAMCfGy1tNGoLOGb3GzuAUSLSB8h5lUGyT
nhltowHy3IcGhmMr5vChsPYtJynOMvwtW1idCA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LebntE3a3PqT0OsperEkmRKEtGk6d9j65tJMG4b/ujTejJ8v5xwCUZKAozK6rvF1x6gd9OrhBfm5
0vrRMbFipICTE1egQTlyzGjR0uCigNkEcYO8OPnRAFiTs4eBQWp2CZgwXVgHNmZDIT61wcZ3LhYX
K8mBMUKdk3y3Paivg/quDoHRWSQzgz7kcJG0FKj+50/tQK9pt78w7u1tzbPEG9S7Ke44OQvDL+ry
RZme2qI3k1OOc0A9hx7K7KFcZvC+wyPLZ93d3p4eCNAVBDzUD2NTv1w+3J84r9V/PTco42jmHLpn
DGDWmNTcQaDkwbJx027mqL92V2d2fdmTAlKuhw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XIqNihqUBm4hjS5HpDfYm96yUATy0DbzEdTupVjcXu4iR+GOI0dSij8tdgBfZfJZuy/hZ5J6Q/CD
krTskZw9LmV+BGgB7CGJpA4yYSdo0CM0UNZJejYEavzaJ9vcx/1RdTSb/veiWG/38Y60+tSASZYe
P7nSwTZkmSvpgxSolSZiYLqupbb7RM0NZ3S6Zrl6vNrlNsdLPgM35DZ2y8t2UlNjCjgjOvetmWWK
PmOw1XGOO2Ii9TrupHMZtTpAzZ3iQjm7ifEQM/FnVutWRl0WiID5nrLohEaaXH8X8BpfB6+fgBRQ
3QGkB5AcJNRqpzkkeqsR9xUkwGvzeh+EsQbfj0dVXsCafO/PKigtQaGBJp9FnnZo8Sc5iK2+goqv
QvWnVHUYv2/M8otXsBwG2pPoY3P2hpewr2+LUXnOgJb8riGXMex/ks2EUNrzWoF338IjYtrqaGil
xT/aMGc8e8OabiEmKQvnTXQjX8sOJ5D2jzZCz/DkP6h63EbCfU1RB7rB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DgfwbhRWuCEhZNNv15BvOLEIflIisRGXUogTw29yfIjSPqANY+I2PMwg/6EPqxvQl9OAnNn5DxBj
9KiIEucWffEXWkRTYwbBvcRvTnP7i/fuplUyCbXGJ7Almyt7XDZiWw3N3weoCDSzRBcBHwafiMfc
oJWE/fkRPV7KSvNFx8T63nLmTNppdUvaLIraUUBPv8hx6fwFhlEmKFCkOI0CIwR+jjtpOleUtykI
XAobxkLNq1gekwN3CScXV6MZJZ4sM4A7NTl6j9UoY9M7iRQO6yhfblmxe09zssM+bLJ6Hevo/TRe
ytQD4Q5AUsylOvE/pzx0mjwQJPSBoJyG8BA/UQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
22//zdssm7vE375GAuIHPBF5XitUi9NzsuPTXi03dsB69BE7M+3lk9JAf2l214rs5vQPm1Nj/SZk
s0EXjj0WgJZGDy8nWaANfePjmfAGqoPy1+nuzth458Qrf7qxugo2qeycRlgQbwsyB1T2q5ycN5x0
+gcrhGUo+QOOeCnVCdEgP0aRRQ0BZQ7BbIxa6BBdPjrDMVPWKDKrO6gngKto6sGpXUGzToYE7B54
sQfgxna22AiWabNzU4KDfbwOp+XIWs8GtSIgOCUDkaVb5KSTgqLdMBBE8mU7ZjGicqIHzaeF+IDv
IYG6/OUxAfNKjRtleGKs5a+ZIFNvZnNV67iKoQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eDCV5f1nkAIvKCut3rKuLrHfjeMdq0N2T6AKwp/ZIO6/qZciWp4zC6hOMmbF6VSVGmweIyaztoRx
FaP4RONylsW7ONgRkEu23TV7mNhjsgpRDV8+J+Gn/z4AQ/DKqscqdF26dVGFJnZgN7HD2XoDXh9w
HSwGGSxfGjWgssnYSB7w+yzGDfrMk5lRotH0xkFPsF3a2rA1NeR6MQAAy9PcAm79+DmRZYbPbijn
dYubUXLY/sJMo/vlAS9cJ3u8LdOBKJYVfrI2UrvtfF/FcgIEnBLZ+wvyqEw0s6WkzgH7NoegNHEE
d010UvGsllyL71w/HKcebiiwlqjq9o1NwfKnwA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59840)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
