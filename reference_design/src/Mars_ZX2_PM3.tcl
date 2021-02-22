# ----------------------------------------------------------------------------------
# Copyright (c) 2021 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------

set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# CLK33
if {$Zynq == "Z7020"} {
create_clock -name CLK33 -period 30.000 [get_ports {CLK33}]
}
if {$Zynq == "Z7020"} {
set_property -dict {PACKAGE_PIN Y7    IOSTANDARD LVCMOS25  } [get_ports {CLK33}]
}

# ETH_LED
if {$Zynq == "Z7020"} {
set_property -dict {PACKAGE_PIN V5    IOSTANDARD LVCMOS25  } [get_ports {ETH_LED2_N}]
}

# FMC0
set_property -dict {PACKAGE_PIN M15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA02_N}]
set_property -dict {PACKAGE_PIN M14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA02_P}]
set_property -dict {PACKAGE_PIN L15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA03_N}]
set_property -dict {PACKAGE_PIN L14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA03_P}]
set_property -dict {PACKAGE_PIN L20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA04_N}]
set_property -dict {PACKAGE_PIN L19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA04_P}]
set_property -dict {PACKAGE_PIN J14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA05_N}]
set_property -dict {PACKAGE_PIN K14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA05_P}]
set_property -dict {PACKAGE_PIN J19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA06_N}]
set_property -dict {PACKAGE_PIN K19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA06_P}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA07_N}]
set_property -dict {PACKAGE_PIN H15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA07_P}]
set_property -dict {PACKAGE_PIN H20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA08_N}]
set_property -dict {PACKAGE_PIN J20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA08_P}]
set_property -dict {PACKAGE_PIN M18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA09_N}]
set_property -dict {PACKAGE_PIN M17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA09_P}]
set_property -dict {PACKAGE_PIN G20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA10_N}]
set_property -dict {PACKAGE_PIN G19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA10_P}]
set_property -dict {PACKAGE_PIN F20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA11_N}]
set_property -dict {PACKAGE_PIN F19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA11_P}]
set_property -dict {PACKAGE_PIN J16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA12_N}]
set_property -dict {PACKAGE_PIN K16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA12_P}]
set_property -dict {PACKAGE_PIN D20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA13_N}]
set_property -dict {PACKAGE_PIN D19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA13_P}]
set_property -dict {PACKAGE_PIN G18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA14_N}]
set_property -dict {PACKAGE_PIN G17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA14_P}]
set_property -dict {PACKAGE_PIN N16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA15_N}]
set_property -dict {PACKAGE_PIN N15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA15_P}]
set_property -dict {PACKAGE_PIN M20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA16_N}]
set_property -dict {PACKAGE_PIN M19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA16_P}]
set_property -dict {PACKAGE_PIN Y14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA19_N}]
set_property -dict {PACKAGE_PIN W14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA19_P}]
set_property -dict {PACKAGE_PIN R14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA20_N}]
set_property -dict {PACKAGE_PIN P14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA20_P}]
set_property -dict {PACKAGE_PIN W15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA21_N}]
set_property -dict {PACKAGE_PIN V15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA21_P}]
set_property -dict {PACKAGE_PIN T15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA22_N}]
set_property -dict {PACKAGE_PIN T14   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA22_P}]
set_property -dict {PACKAGE_PIN Y17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA23_N}]
set_property -dict {PACKAGE_PIN Y16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA23_P}]
set_property -dict {PACKAGE_PIN U17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA24_N}]
set_property -dict {PACKAGE_PIN T16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA24_P}]
set_property -dict {PACKAGE_PIN Y19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA25_N}]
set_property -dict {PACKAGE_PIN Y18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA25_P}]
set_property -dict {PACKAGE_PIN P16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA26_N}]
set_property -dict {PACKAGE_PIN P15   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA26_P}]
set_property -dict {PACKAGE_PIN W19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA27_N}]
set_property -dict {PACKAGE_PIN W18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA27_P}]
set_property -dict {PACKAGE_PIN P18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA28_N}]
set_property -dict {PACKAGE_PIN N17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA28_P}]
set_property -dict {PACKAGE_PIN W20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA29_N}]
set_property -dict {PACKAGE_PIN V20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA29_P}]
set_property -dict {PACKAGE_PIN U20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA30_N}]
set_property -dict {PACKAGE_PIN T20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA30_P}]
set_property -dict {PACKAGE_PIN T10   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA31_N}]
set_property -dict {PACKAGE_PIN T11   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA31_P}]
set_property -dict {PACKAGE_PIN R17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA32_N}]
set_property -dict {PACKAGE_PIN R16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA32_P}]
set_property -dict {PACKAGE_PIN W16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA33_N}]
set_property -dict {PACKAGE_PIN V16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA33_P}]
set_property -dict {PACKAGE_PIN H17   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA00_CC_N}]
set_property -dict {PACKAGE_PIN H16   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA00_CC_P}]
set_property -dict {PACKAGE_PIN H18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA01_CC_N}]
set_property -dict {PACKAGE_PIN J18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA01_CC_P}]
set_property -dict {PACKAGE_PIN P19   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA17_CC_N}]
set_property -dict {PACKAGE_PIN N18   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA17_CC_P}]
set_property -dict {PACKAGE_PIN P20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA18_CC_N}]
set_property -dict {PACKAGE_PIN N20   IOSTANDARD LVCMOS25  } [get_ports {FMC_LA18_CC_P}]
set_property -dict {PACKAGE_PIN K18   IOSTANDARD LVCMOS25  } [get_ports {FMC_CLK0_M2C_N}]
set_property -dict {PACKAGE_PIN K17   IOSTANDARD LVCMOS25  } [get_ports {FMC_CLK0_M2C_P}]
set_property -dict {PACKAGE_PIN U19   IOSTANDARD LVCMOS25  } [get_ports {FMC_CLK1_M2C_N}]
set_property -dict {PACKAGE_PIN U18   IOSTANDARD LVCMOS25  } [get_ports {FMC_CLK1_M2C_P}]

# FX3
set_property -dict {PACKAGE_PIN B20   IOSTANDARD LVCMOS25  } [get_ports {FX3_A1}]
set_property -dict {PACKAGE_PIN B19   IOSTANDARD LVCMOS25  } [get_ports {FX3_CLK}]
set_property -dict {PACKAGE_PIN D18   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ8}]
set_property -dict {PACKAGE_PIN E19   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ9}]
set_property -dict {PACKAGE_PIN E17   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ10}]
set_property -dict {PACKAGE_PIN F16   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ11}]
set_property -dict {PACKAGE_PIN L17   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ12}]
set_property -dict {PACKAGE_PIN L16   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ13}]
set_property -dict {PACKAGE_PIN F17   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ14}]
set_property -dict {PACKAGE_PIN E18   IOSTANDARD LVCMOS25  } [get_ports {FX3_DQ15}]
set_property -dict {PACKAGE_PIN A20   IOSTANDARD LVCMOS25  } [get_ports {FX3_FLAGA}]
set_property -dict {PACKAGE_PIN C20   IOSTANDARD LVCMOS25  } [get_ports {FX3_FLAGB_BTN_N}]

# I2C_PL
if {$Zynq == "Z7020"} {
set_property -dict {PACKAGE_PIN Y6    IOSTANDARD LVCMOS25  } [get_ports {I2C_INT_N}]
set_property -dict {PACKAGE_PIN V8    IOSTANDARD LVCMOS25  } [get_ports {I2C_SCL_LS}]
set_property -dict {PACKAGE_PIN W8    IOSTANDARD LVCMOS25  } [get_ports {I2C_SDA_LS}]
}

# LED
set_property -dict {PACKAGE_PIN R19   IOSTANDARD LVCMOS25  } [get_ports {LED0_N_PL}]
set_property -dict {PACKAGE_PIN T19   IOSTANDARD LVCMOS25  } [get_ports {LED1_N_PL}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD LVCMOS25  } [get_ports {LED2_N_PL}]
set_property -dict {PACKAGE_PIN J15   IOSTANDARD LVCMOS25  } [get_ports {LED3_N_PL}]
