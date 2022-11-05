# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\vitis-tinyJAMBU-hardware\vitis-128_FSR_N\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\vitis-tinyJAMBU-hardware\vitis-128_FSR_N\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {D:\vitis-tinyJAMBU-hardware\axi_FSR_128_N\design_1_wrapper.xsa}\
-out {D:/vitis-tinyJAMBU-hardware/vitis-128_FSR_N}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
platform generate -quick
platform config -updatehw {D:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/design_1_wrapper.xsa}
platform config -updatehw {D:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/design_1_wrapper.xsa}
platform active {design_1_wrapper}
platform config -updatehw {D:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/design_1_wrapper.xsa}
platform config -updatehw {D:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/design_1_wrapper.xsa}
platform config -updatehw {D:/vitis-tinyJAMBU-hardware/axi_FSR_128_N/design_1_wrapper.xsa}
platform active {design_1_wrapper}
bsp reload
platform generate -domains 
