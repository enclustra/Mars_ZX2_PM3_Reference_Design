---------------------------------------------------------------------------------------------------
-- Copyright (c) 2020 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- libraries
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------------------------
-- entity declaration
---------------------------------------------------------------------------------------------------
entity Mars_ZX2_PM3 is
  
  port (
    -- PS MIO Pins
    FIXED_IO_mio                   : inout  std_logic_vector(53 downto 0);
    FIXED_IO_ddr_vrn               : inout  std_logic;
    FIXED_IO_ddr_vrp               : inout  std_logic;
    FIXED_IO_ps_srstb              : inout  std_logic;
    FIXED_IO_ps_clk                : inout  std_logic;
    FIXED_IO_ps_porb               : inout  std_logic;
    DDR_cas_n                      : inout  std_logic;
    DDR_cke                        : inout  std_logic;
    DDR_ck_n                       : inout  std_logic;
    DDR_ck_p                       : inout  std_logic;
    DDR_cs_n                       : inout  std_logic;
    DDR_reset_n                    : inout  std_logic;
    DDR_odt                        : inout  std_logic;
    DDR_ras_n                      : inout  std_logic;
    DDR_we_n                       : inout  std_logic;
    DDR_ba                         : inout  std_logic_vector(2 downto 0);
    DDR_addr                       : inout  std_logic_vector(14 downto 0);
    DDR_dm                         : inout  std_logic_vector(3 downto 0);
    DDR_dq                         : inout  std_logic_vector(31 downto 0);
    DDR_dqs_n                      : inout  std_logic_vector(3 downto 0);
    DDR_dqs_p                      : inout  std_logic_vector(3 downto 0);
    
    -- CLK33
    CLK33                          : in      std_logic; -- Only available on Z7020 modules
    
    -- ETH_LED
    ETH_LED2_N                     : inout   std_logic; -- Only available on Z7020 modules
    
    -- FMC0
    FMC_LA02_N                     : inout   std_logic;
    FMC_LA02_P                     : inout   std_logic;
    FMC_LA03_N                     : inout   std_logic;
    FMC_LA03_P                     : inout   std_logic;
    FMC_LA04_N                     : inout   std_logic;
    FMC_LA04_P                     : inout   std_logic;
    FMC_LA05_N                     : inout   std_logic;
    FMC_LA05_P                     : inout   std_logic;
    FMC_LA06_N                     : inout   std_logic;
    FMC_LA06_P                     : inout   std_logic;
    FMC_LA07_N                     : inout   std_logic;
    FMC_LA07_P                     : inout   std_logic;
    FMC_LA08_N                     : inout   std_logic;
    FMC_LA08_P                     : inout   std_logic;
    FMC_LA09_N                     : inout   std_logic;
    FMC_LA09_P                     : inout   std_logic;
    FMC_LA10_N                     : inout   std_logic;
    FMC_LA10_P                     : inout   std_logic;
    FMC_LA11_N                     : inout   std_logic;
    FMC_LA11_P                     : inout   std_logic;
    FMC_LA12_N                     : inout   std_logic;
    FMC_LA12_P                     : inout   std_logic;
    FMC_LA13_N                     : inout   std_logic;
    FMC_LA13_P                     : inout   std_logic;
    FMC_LA14_N                     : inout   std_logic;
    FMC_LA14_P                     : inout   std_logic;
    FMC_LA15_N                     : inout   std_logic;
    FMC_LA15_P                     : inout   std_logic;
    FMC_LA16_N                     : inout   std_logic;
    FMC_LA16_P                     : inout   std_logic;
    FMC_LA19_N                     : inout   std_logic;
    FMC_LA19_P                     : inout   std_logic;
    FMC_LA20_N                     : inout   std_logic;
    FMC_LA20_P                     : inout   std_logic;
    FMC_LA21_N                     : inout   std_logic;
    FMC_LA21_P                     : inout   std_logic;
    FMC_LA22_N                     : inout   std_logic;
    FMC_LA22_P                     : inout   std_logic;
    FMC_LA23_N                     : inout   std_logic;
    FMC_LA23_P                     : inout   std_logic;
    FMC_LA24_N                     : inout   std_logic;
    FMC_LA24_P                     : inout   std_logic;
    FMC_LA25_N                     : inout   std_logic;
    FMC_LA25_P                     : inout   std_logic;
    FMC_LA26_N                     : inout   std_logic;
    FMC_LA26_P                     : inout   std_logic;
    FMC_LA27_N                     : inout   std_logic;
    FMC_LA27_P                     : inout   std_logic;
    FMC_LA28_N                     : inout   std_logic;
    FMC_LA28_P                     : inout   std_logic;
    FMC_LA29_N                     : inout   std_logic;
    FMC_LA29_P                     : inout   std_logic;
    FMC_LA30_N                     : inout   std_logic;
    FMC_LA30_P                     : inout   std_logic;
    FMC_LA31_N                     : inout   std_logic;
    FMC_LA31_P                     : inout   std_logic;
    FMC_LA32_N                     : inout   std_logic;
    FMC_LA32_P                     : inout   std_logic;
    FMC_LA33_N                     : inout   std_logic;
    FMC_LA33_P                     : inout   std_logic;
    FMC_LA00_CC_N                  : inout   std_logic;
    FMC_LA00_CC_P                  : inout   std_logic;
    FMC_LA01_CC_N                  : inout   std_logic;
    FMC_LA01_CC_P                  : inout   std_logic;
    FMC_LA17_CC_N                  : inout   std_logic;
    FMC_LA17_CC_P                  : inout   std_logic;
    FMC_LA18_CC_N                  : inout   std_logic;
    FMC_LA18_CC_P                  : inout   std_logic;
    FMC_CLK0_M2C_N                 : inout   std_logic;
    FMC_CLK0_M2C_P                 : inout   std_logic;
    FMC_CLK1_M2C_N                 : inout   std_logic;
    FMC_CLK1_M2C_P                 : inout   std_logic;
    
    -- FX3
    FX3_A1                         : inout   std_logic;
    FX3_CLK                        : inout   std_logic;
    FX3_DQ8                        : inout   std_logic;
    FX3_DQ9                        : inout   std_logic;
    FX3_DQ10                       : inout   std_logic;
    FX3_DQ11                       : inout   std_logic;
    FX3_DQ12                       : inout   std_logic;
    FX3_DQ13                       : inout   std_logic;
    FX3_DQ14                       : inout   std_logic;
    FX3_DQ15                       : inout   std_logic;
    FX3_FLAGA                      : inout   std_logic;
    FX3_FLAGB_BTN_N                : inout   std_logic;
    
    -- I2C_PL
    I2C_INT_N                      : in      std_logic; -- Only available on Z7020 modules
    I2C_SCL_LS                     : inout   std_logic; -- Only available on Z7020 modules
    I2C_SDA_LS                     : inout   std_logic; -- Only available on Z7020 modules
    
    -- LED
    LED0_N_PL                      : out     std_logic;
    LED1_N_PL                      : out     std_logic;
    LED2_N_PL                      : out     std_logic;
    LED3_N_PL                      : out     std_logic
  );
end Mars_ZX2_PM3;

architecture rtl of Mars_ZX2_PM3 is

  ---------------------------------------------------------------------------------------------------
  -- component declarations
  ---------------------------------------------------------------------------------------------------
  component Mars_ZX2 is
    port (
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      FIXED_IO_mio        : inout  std_logic_vector(53 downto 0);
      FIXED_IO_ddr_vrn    : inout  std_logic;
      FIXED_IO_ddr_vrp    : inout  std_logic;
      FIXED_IO_ps_srstb   : inout  std_logic;
      FIXED_IO_ps_clk     : inout  std_logic;
      FIXED_IO_ps_porb    : inout  std_logic;
      DDR_cas_n           : inout  std_logic;
      DDR_cke             : inout  std_logic;
      DDR_ck_n            : inout  std_logic;
      DDR_ck_p            : inout  std_logic;
      DDR_cs_n            : inout  std_logic;
      DDR_reset_n         : inout  std_logic;
      DDR_odt             : inout  std_logic;
      DDR_ras_n           : inout  std_logic;
      DDR_we_n            : inout  std_logic;
      DDR_ba              : inout  std_logic_vector(2 downto 0);
      DDR_addr            : inout  std_logic_vector(14 downto 0);
      DDR_dm              : inout  std_logic_vector(3 downto 0);
      DDR_dq              : inout  std_logic_vector(31 downto 0);
      DDR_dqs_n           : inout  std_logic_vector(3 downto 0);
      DDR_dqs_p           : inout  std_logic_vector(3 downto 0);
      LED_N               : out    std_logic_vector(3 downto 0)
    );
    
  end component Mars_ZX2;

  ---------------------------------------------------------------------------------------------------
  -- signal declarations
  ---------------------------------------------------------------------------------------------------
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal LED_N            : std_logic_vector(3 downto 0);
  signal LedCount         : unsigned(23 downto 0);

begin
  
  ---------------------------------------------------------------------------------------------------
  -- processor system instance
  ---------------------------------------------------------------------------------------------------
  Mars_ZX2_i: component Mars_ZX2
    port map (
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      FIXED_IO_mio         => FIXED_IO_mio,
      FIXED_IO_ddr_vrn     => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp     => FIXED_IO_ddr_vrp,
      FIXED_IO_ps_srstb    => FIXED_IO_ps_srstb,
      FIXED_IO_ps_clk      => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb     => FIXED_IO_ps_porb,
      DDR_cas_n            => DDR_cas_n,
      DDR_cke              => DDR_cke,
      DDR_ck_n             => DDR_ck_n,
      DDR_ck_p             => DDR_ck_p,
      DDR_cs_n             => DDR_cs_n,
      DDR_reset_n          => DDR_reset_n,
      DDR_odt              => DDR_odt,
      DDR_ras_n            => DDR_ras_n,
      DDR_we_n             => DDR_we_n,
      DDR_ba               => DDR_ba,
      DDR_addr             => DDR_addr,
      DDR_dm               => DDR_dm,
      DDR_dq               => DDR_dq,
      DDR_dqs_n            => DDR_dqs_n,
      DDR_dqs_p            => DDR_dqs_p,
      LED_N                => LED_N
    );
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  LED0_N_PL <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  LED1_N_PL <= '0' when LED_N(0) = '0' else 'Z';
  LED2_N_PL <= '0' when LED_N(1) = '0' else 'Z';
  LED3_N_PL <= '0' when LED_N(2) = '0' else 'Z';

end rtl;
