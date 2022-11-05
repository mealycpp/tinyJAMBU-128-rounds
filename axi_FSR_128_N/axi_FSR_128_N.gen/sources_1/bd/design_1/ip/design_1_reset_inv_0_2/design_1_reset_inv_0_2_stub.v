// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Fri Nov  4 22:41:45 2022
// Host        : LAPTOP-L4R3AOA2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/axi_FSR_128_N.gen/sources_1/bd/design_1/ip/design_1_reset_inv_0_2/design_1_reset_inv_0_2_stub.v
// Design      : design_1_reset_inv_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.1.2" *)
module design_1_reset_inv_0_2(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
