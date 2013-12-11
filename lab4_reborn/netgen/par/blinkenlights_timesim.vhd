--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: blinkenlights_timesim.vhd
-- /___/   /\     Timestamp: Tue Dec 03 20:04:43 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf blinkenlights.pcf -mhf -rpw 100 -tpw 0 -ar Structure -tm blinkenlights -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim blinkenlights.ncd blinkenlights_timesim.vhd 
-- Device	: 2s200fg256-5 (PRODUCTION 1.27 2008-01-09)
-- Input file	: blinkenlights.ncd
-- Output file	: C:\Users\Administrator\Desktop\lab4_reborn\netgen\par\blinkenlights_timesim.vhd
-- # of Entities	: 1
-- Design Name	: blinkenlights
-- Xilinx	: C:\Xilinx\10.1\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity blinkenlights is
  port (
    clk : in STD_LOGIC := 'X'; 
    invCLR : in STD_LOGIC := 'X'; 
    s0 : in STD_LOGIC := 'X'; 
    s1 : in STD_LOGIC := 'X'; 
    sbit : in STD_LOGIC := 'X'; 
    lights : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    data_in : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end blinkenlights;

architecture Structure of blinkenlights is
  signal invCLR_IBUF_0 : STD_LOGIC; 
  signal sbit_IBUF_0 : STD_LOGIC; 
  signal data_1_0 : STD_LOGIC; 
  signal data_2_0 : STD_LOGIC; 
  signal data_3_0 : STD_LOGIC; 
  signal data_in_0_IBUF_0 : STD_LOGIC; 
  signal data_in_1_IBUF_0 : STD_LOGIC; 
  signal data_in_2_IBUF_0 : STD_LOGIC; 
  signal data_in_3_IBUF_0 : STD_LOGIC; 
  signal s0_IBUF_0 : STD_LOGIC; 
  signal s1_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_402 : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_403 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_404 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_406 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal reg_chH_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_411 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal divider_internal_count_cmp_eq0000_0 : STD_LOGIC; 
  signal divider_internal_count_cmp_eq000024_SW0_O : STD_LOGIC; 
  signal divider_internal_count_cmp_eq000016_0 : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_432 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal reg_LINES_4_chX_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_436 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_437 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal divider_internal_clock_signal_444 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux00004_0 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux00008_0 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000027_O : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000042_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in_0 : STD_LOGIC; 
  signal reg_chA_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000090_0 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal invCLR_IBUF_459 : STD_LOGIC; 
  signal sbit_IBUF_464 : STD_LOGIC; 
  signal lights_0_OUTMUX_468 : STD_LOGIC; 
  signal lights_1_OUTMUX_472 : STD_LOGIC; 
  signal lights_2_OUTMUX_476 : STD_LOGIC; 
  signal lights_3_OUTMUX_480 : STD_LOGIC; 
  signal lights_4_OUTMUX_484 : STD_LOGIC; 
  signal lights_5_OUTMUX_488 : STD_LOGIC; 
  signal data_in_0_IBUF_491 : STD_LOGIC; 
  signal data_in_1_IBUF_494 : STD_LOGIC; 
  signal data_in_2_IBUF_497 : STD_LOGIC; 
  signal data_in_3_IBUF_500 : STD_LOGIC; 
  signal s0_IBUF_503 : STD_LOGIC; 
  signal s1_IBUF_506 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in1_521 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in2_520 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in1_534 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in2_533 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in : STD_LOGIC; 
  signal reg_chH_dff_in1_547 : STD_LOGIC; 
  signal reg_chH_dff_in2_546 : STD_LOGIC; 
  signal reg_chH_dff_in : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_not0001 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_not0001 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal divider_internal_clock_signal_mux00004_967 : STD_LOGIC; 
  signal divider_internal_count_cmp_eq000016_966 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_not0001 : STD_LOGIC; 
  signal N21_pack_1 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000092_1011 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux00008_1025 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000090_1024 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in1_560 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in2_559 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in : STD_LOGIC; 
  signal divider_internal_count_0_CYMUXG : STD_LOGIC; 
  signal divider_internal_count_0_GROM : STD_LOGIC; 
  signal divider_internal_Mcount_count_cy_0_Q_577 : STD_LOGIC; 
  signal divider_internal_count_0_CYINIT_576 : STD_LOGIC; 
  signal divider_internal_count_0_LOGIC_ZERO_575 : STD_LOGIC; 
  signal divider_internal_count_2_FROM : STD_LOGIC; 
  signal divider_internal_count_2_CYMUXG : STD_LOGIC; 
  signal divider_internal_count_2_LOGIC_ZERO_606 : STD_LOGIC; 
  signal divider_internal_count_2_GROM : STD_LOGIC; 
  signal divider_internal_Mcount_count_cy_2_Q_604 : STD_LOGIC; 
  signal divider_internal_count_2_CYINIT_603 : STD_LOGIC; 
  signal divider_internal_count_4_FROM : STD_LOGIC; 
  signal divider_internal_count_4_CYMUXG : STD_LOGIC; 
  signal divider_internal_count_4_LOGIC_ZERO_636 : STD_LOGIC; 
  signal divider_internal_count_4_GROM : STD_LOGIC; 
  signal divider_internal_Mcount_count_cy_4_Q_634 : STD_LOGIC; 
  signal divider_internal_count_4_CYINIT_633 : STD_LOGIC; 
  signal divider_internal_count_6_FROM : STD_LOGIC; 
  signal divider_internal_count_6_CYMUXG : STD_LOGIC; 
  signal divider_internal_count_6_LOGIC_ZERO_666 : STD_LOGIC; 
  signal divider_internal_count_6_GROM : STD_LOGIC; 
  signal divider_internal_Mcount_count_cy_6_Q_664 : STD_LOGIC; 
  signal divider_internal_count_6_CYINIT_663 : STD_LOGIC; 
  signal divider_internal_count_8_LOGIC_ZERO_707 : STD_LOGIC; 
  signal divider_internal_count_8_FROM : STD_LOGIC; 
  signal divider_internal_count_9_rt_694 : STD_LOGIC; 
  signal divider_internal_Mcount_count_cy_8_Q_693 : STD_LOGIC; 
  signal divider_internal_count_8_CYINIT_692 : STD_LOGIC; 
  signal divider_internal_count_cmp_eq000024_SW0_O_pack_1 : STD_LOGIC; 
  signal divider_internal_count_cmp_eq0000 : STD_LOGIC; 
  signal N13_pack_1 : STD_LOGIC; 
  signal reg_LINES_4_chX_dff_in_730 : STD_LOGIC; 
  signal N7_pack_1 : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in_742 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_not0001 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000027_O_pack_1 : STD_LOGIC; 
  signal divider_internal_clock_signal_mux000042_766 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in_778 : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal reg_chA_dff_in_790 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal divider_internal_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal data : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal divider_internal_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal divider_internal_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  invCLR_IMUX : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => invCLR_IBUF_459,
      O => invCLR_IBUF_0
    );
  invCLR_IBUF : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => invCLR,
      O => invCLR_IBUF_459
    );
  sbit_IMUX : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => sbit_IBUF_464,
      O => sbit_IBUF_0
    );
  sbit_IBUF : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => sbit,
      O => sbit_IBUF_464
    );
  lights_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => lights_0_OUTMUX_468,
      O => lights(0)
    );
  lights_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => data(0),
      O => lights_0_OUTMUX_468
    );
  lights_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => lights_1_OUTMUX_472,
      O => lights(1)
    );
  lights_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => data_1_0,
      O => lights_1_OUTMUX_472
    );
  lights_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => lights_2_OUTMUX_476,
      O => lights(2)
    );
  lights_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => data_2_0,
      O => lights_2_OUTMUX_476
    );
  lights_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => lights_3_OUTMUX_480,
      O => lights(3)
    );
  lights_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => data_3_0,
      O => lights_3_OUTMUX_480
    );
  lights_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => lights_4_OUTMUX_484,
      O => lights(4)
    );
  lights_4_OUTMUX : X_BUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => data(4),
      O => lights_4_OUTMUX_484
    );
  lights_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => lights_5_OUTMUX_488,
      O => lights(5)
    );
  lights_5_OUTMUX : X_BUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => data(5),
      O => lights_5_OUTMUX_488
    );
  data_in_0_IMUX : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => data_in_0_IBUF_491,
      O => data_in_0_IBUF_0
    );
  data_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => data_in(0),
      O => data_in_0_IBUF_491
    );
  data_in_1_IMUX : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => data_in_1_IBUF_494,
      O => data_in_1_IBUF_0
    );
  data_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => data_in(1),
      O => data_in_1_IBUF_494
    );
  data_in_2_IMUX : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => data_in_2_IBUF_497,
      O => data_in_2_IBUF_0
    );
  data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => data_in(2),
      O => data_in_2_IBUF_497
    );
  data_in_3_IMUX : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => data_in_3_IBUF_500,
      O => data_in_3_IBUF_0
    );
  data_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => data_in(3),
      O => data_in_3_IBUF_500
    );
  s0_IMUX : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => s0_IBUF_503,
      O => s0_IBUF_0
    );
  s0_IBUF : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => s0,
      O => s0_IBUF_503
    );
  s1_IMUX : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => s1_IBUF_506,
      O => s1_IBUF_0
    );
  s1_IBUF : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => s1,
      O => s1_IBUF_506
    );
  reg_LINES_1_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R23C25.S0"
    )
    port map (
      IA => reg_LINES_1_chX_dff_in2_520,
      IB => reg_LINES_1_chX_dff_in1_521,
      SEL => s1_IBUF_0,
      O => reg_LINES_1_chX_dff_in
    );
  reg_LINES_1_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "CLB_R23C25.S0"
    )
    port map (
      ADR0 => data_1_0,
      ADR1 => reg_chH_trigger_jk_t_402,
      ADR2 => invCLR_IBUF_0,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_1_chX_dff_in1_521
    );
  reg_LINES_1_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"CA00",
      LOC => "CLB_R23C25.S0"
    )
    port map (
      ADR0 => reg_LINES_1_chX_trigger_jk_t_403,
      ADR1 => reg_LINES_2_chX_trigger_jk_t_404,
      ADR2 => s0_IBUF_0,
      ADR3 => invCLR_IBUF_0,
      O => reg_LINES_1_chX_dff_in2_520
    );
  reg_LINES_1_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R23C25.S0"
    )
    port map (
      I => reg_LINES_1_chX_dff_in,
      O => reg_LINES_1_chX_dff_in_0
    );
  reg_LINES_2_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R21C26.S0"
    )
    port map (
      IA => reg_LINES_2_chX_dff_in2_533,
      IB => reg_LINES_2_chX_dff_in1_534,
      SEL => s1_IBUF_0,
      O => reg_LINES_2_chX_dff_in
    );
  reg_LINES_2_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "CLB_R21C26.S0"
    )
    port map (
      ADR0 => data_2_0,
      ADR1 => reg_LINES_1_chX_trigger_jk_t_403,
      ADR2 => invCLR_IBUF_0,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_2_chX_dff_in1_534
    );
  reg_LINES_2_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "CLB_R21C26.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_LINES_2_chX_trigger_jk_t_404,
      ADR3 => reg_LINES_3_chX_trigger_jk_t_406,
      O => reg_LINES_2_chX_dff_in2_533
    );
  reg_LINES_2_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R21C26.S0"
    )
    port map (
      I => reg_LINES_2_chX_dff_in,
      O => reg_LINES_2_chX_dff_in_0
    );
  reg_chH_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R22C25.S1"
    )
    port map (
      IA => reg_chH_dff_in2_546,
      IB => reg_chH_dff_in1_547,
      SEL => s1_IBUF_0,
      O => reg_chH_dff_in
    );
  reg_chH_dff_in1 : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "CLB_R22C25.S1"
    )
    port map (
      ADR0 => N17_0,
      ADR1 => reg_chH_trigger_jk_t_402,
      ADR2 => invCLR_IBUF_0,
      ADR3 => N16_0,
      O => reg_chH_dff_in1_547
    );
  reg_chH_dff_in2 : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "CLB_R22C25.S1"
    )
    port map (
      ADR0 => reg_LINES_1_chX_trigger_jk_t_403,
      ADR1 => invCLR_IBUF_0,
      ADR2 => s0_IBUF_0,
      ADR3 => reg_chH_trigger_jk_t_402,
      O => reg_chH_dff_in2_546
    );
  reg_chH_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R22C25.S1"
    )
    port map (
      I => reg_chH_dff_in,
      O => reg_chH_dff_in_0
    );
  reg_LINES_4_chX_dff_in_SW1 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "CLB_R13C32.S1"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => s0_IBUF_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N14
    );
  reg_chA_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "CLB_R13C32.S1"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => VCC,
      ADR2 => reg_chA_trigger_jk_t_437,
      ADR3 => N4,
      O => reg_chA_trigger_jk_t_mux0000
    );
  reg_chA_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R13C32.S1"
    )
    port map (
      I => N14,
      O => N14_0
    );
  reg_chA_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R13C32.S1",
      INIT => '1'
    )
    port map (
      I => reg_chA_trigger_jk_t_mux0000,
      CE => reg_chA_trigger_jk_t_not0001_0,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_chA_dff_in_0,
      SRST => GND,
      O => reg_chA_trigger_jk_t_437
    );
  data_5_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"0AAA",
      LOC => "CLB_R15C31.S0"
    )
    port map (
      ADR0 => reg_LINES_5_chX_trigger_jk_t_432,
      ADR1 => VCC,
      ADR2 => s0_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => data(5)
    );
  reg_LINES_5_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R15C31.S0"
    )
    port map (
      ADR0 => reg_LINES_5_chX_dff_in_0,
      ADR1 => reg_LINES_5_chX_trigger_jk_t_432,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_LINES_5_chX_trigger_jk_t_mux0000
    );
  reg_LINES_5_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R15C31.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_5_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_5_chX_trigger_jk_t_not0001_0,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_5_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_5_chX_trigger_jk_t_432
    );
  reg_LINES_4_chX_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"CAFA",
      LOC => "CLB_R15C29.S0"
    )
    port map (
      ADR0 => N13,
      ADR1 => N14_0,
      ADR2 => s1_IBUF_0,
      ADR3 => reg_LINES_3_chX_trigger_jk_t_406,
      O => reg_LINES_4_chX_trigger_jk_t_not0001
    );
  reg_LINES_3_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "CLB_R15C29.S0"
    )
    port map (
      ADR0 => reg_LINES_3_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => reg_LINES_3_chX_trigger_jk_t_406,
      ADR3 => VCC,
      O => reg_LINES_3_chX_trigger_jk_t_mux0000
    );
  reg_LINES_3_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R15C29.S0"
    )
    port map (
      I => reg_LINES_3_chX_dff_in_0,
      O => reg_LINES_3_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_3_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C29.S0"
    )
    port map (
      I => reg_LINES_4_chX_trigger_jk_t_not0001,
      O => reg_LINES_4_chX_trigger_jk_t_not0001_0
    );
  reg_LINES_3_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R15C29.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_3_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_3_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_3_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_3_chX_trigger_jk_t_406
    );
  data_1_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "CLB_R23C25.S1"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => data_in_1_IBUF_0,
      ADR2 => reg_LINES_1_chX_trigger_jk_t_403,
      ADR3 => s1_IBUF_0,
      O => data(1)
    );
  reg_LINES_1_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R23C25.S1"
    )
    port map (
      ADR0 => reg_LINES_1_chX_dff_in_0,
      ADR1 => reg_LINES_1_chX_trigger_jk_t_403,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_LINES_1_chX_trigger_jk_t_mux0000
    );
  reg_LINES_1_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R23C25.S1"
    )
    port map (
      I => reg_LINES_1_chX_dff_in_0,
      O => reg_LINES_1_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_1_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R23C25.S1"
    )
    port map (
      I => data(1),
      O => data_1_0
    );
  reg_LINES_1_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R23C25.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_1_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_1_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_1_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_1_chX_trigger_jk_t_403
    );
  reg_LINES_5_chX_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"CFAA",
      LOC => "CLB_R15C30.S1"
    )
    port map (
      ADR0 => N10,
      ADR1 => N8_0,
      ADR2 => reg_LINES_6_chX_trigger_jk_t_436,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_5_chX_trigger_jk_t_not0001
    );
  reg_LINES_6_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "CLB_R15C30.S1"
    )
    port map (
      ADR0 => reg_LINES_6_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => reg_LINES_6_chX_trigger_jk_t_436,
      ADR3 => VCC,
      O => reg_LINES_6_chX_trigger_jk_t_mux0000
    );
  reg_LINES_6_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C30.S1"
    )
    port map (
      I => reg_LINES_5_chX_trigger_jk_t_not0001,
      O => reg_LINES_5_chX_trigger_jk_t_not0001_0
    );
  reg_LINES_6_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R15C30.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_6_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_6_chX_trigger_jk_t_not0001_0,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_6_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_6_chX_trigger_jk_t_436
    );
  data_0_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "CLB_R22C25.S0"
    )
    port map (
      ADR0 => reg_chH_trigger_jk_t_402,
      ADR1 => data_in_0_IBUF_0,
      ADR2 => s0_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => data(0)
    );
  reg_chH_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "CLB_R22C25.S0"
    )
    port map (
      ADR0 => reg_chH_dff_in_0,
      ADR1 => VCC,
      ADR2 => reg_chH_trigger_jk_t_402,
      ADR3 => VCC,
      O => reg_chH_trigger_jk_t_mux0000
    );
  reg_chH_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R22C25.S0"
    )
    port map (
      I => reg_chH_dff_in_0,
      O => reg_chH_trigger_jk_t_CEMUXNOT
    );
  reg_chH_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R22C25.S0",
      INIT => '1'
    )
    port map (
      I => reg_chH_trigger_jk_t_mux0000,
      CE => reg_chH_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_chH_dff_in_0,
      SRST => GND,
      O => reg_chH_trigger_jk_t_402
    );
  data_4_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "CLB_R14C29.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_LINES_4_chX_trigger_jk_t_411,
      ADR2 => s0_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => data(4)
    );
  reg_LINES_4_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "CLB_R14C29.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_LINES_4_chX_trigger_jk_t_411,
      ADR2 => reg_LINES_4_chX_dff_in_0,
      ADR3 => VCC,
      O => reg_LINES_4_chX_trigger_jk_t_mux0000
    );
  reg_LINES_4_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R14C29.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_4_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_4_chX_trigger_jk_t_not0001_0,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_4_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_4_chX_trigger_jk_t_411
    );
  data_2_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "CLB_R21C26.S1"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => data_in_2_IBUF_0,
      ADR2 => reg_LINES_2_chX_trigger_jk_t_404,
      ADR3 => s1_IBUF_0,
      O => data(2)
    );
  reg_LINES_2_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "CLB_R21C26.S1"
    )
    port map (
      ADR0 => reg_LINES_2_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_LINES_2_chX_trigger_jk_t_404,
      O => reg_LINES_2_chX_trigger_jk_t_mux0000
    );
  reg_LINES_2_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R21C26.S1"
    )
    port map (
      I => reg_LINES_2_chX_dff_in_0,
      O => reg_LINES_2_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_2_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R21C26.S1"
    )
    port map (
      I => data(2),
      O => data_2_0
    );
  reg_LINES_2_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R21C26.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_2_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_2_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_clock_signal_444,
      SET => GND,
      RST => GND,
      SSET => reg_LINES_2_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_2_chX_trigger_jk_t_404
    );
  divider_internal_clock_signal_mux00004 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "CLB_R26C25.S0"
    )
    port map (
      ADR0 => divider_internal_count(3),
      ADR1 => divider_internal_count(1),
      ADR2 => divider_internal_count(0),
      ADR3 => divider_internal_count(9),
      O => divider_internal_clock_signal_mux00004_967
    );
  divider_internal_count_cmp_eq000016 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "CLB_R26C25.S0"
    )
    port map (
      ADR0 => divider_internal_count(3),
      ADR1 => divider_internal_count(0),
      ADR2 => divider_internal_count(1),
      ADR3 => divider_internal_count(2),
      O => divider_internal_count_cmp_eq000016_966
    );
  divider_internal_clock_signal_mux00004_XUSED : X_BUF
    generic map(
      LOC => "CLB_R26C25.S0"
    )
    port map (
      I => divider_internal_clock_signal_mux00004_967,
      O => divider_internal_clock_signal_mux00004_0
    );
  divider_internal_clock_signal_mux00004_YUSED : X_BUF
    generic map(
      LOC => "CLB_R26C25.S0"
    )
    port map (
      I => divider_internal_count_cmp_eq000016_966,
      O => divider_internal_count_cmp_eq000016_0
    );
  data_0_MLTSRCEDGELogicTrst1_SW1 : X_LUT4
    generic map(
      INIT => X"D8FA",
      LOC => "CLB_R16C28.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => data_in_0_IBUF_0,
      ADR2 => sbit_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => N17
    );
  data_3_MLTSRCEDGELogicTrst1 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "CLB_R16C28.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => data_in_3_IBUF_0,
      ADR2 => s1_IBUF_0,
      ADR3 => reg_LINES_3_chX_trigger_jk_t_406,
      O => data(3)
    );
  N17_XUSED : X_BUF
    generic map(
      LOC => "CLB_R16C28.S0"
    )
    port map (
      I => N17,
      O => N17_0
    );
  N17_YUSED : X_BUF
    generic map(
      LOC => "CLB_R16C28.S0"
    )
    port map (
      I => data(3),
      O => data_3_0
    );
  reg_LINES_6_chX_dff_in_SW1 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "CLB_R22C28.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => invCLR_IBUF_0,
      ADR2 => VCC,
      ADR3 => s1_IBUF_0,
      O => N8
    );
  data_0_MLTSRCEDGELogicTrst1_SW0 : X_LUT4
    generic map(
      INIT => X"D850",
      LOC => "CLB_R22C28.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => data_in_0_IBUF_0,
      ADR2 => sbit_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => N16
    );
  N8_XUSED : X_BUF
    generic map(
      LOC => "CLB_R22C28.S0"
    )
    port map (
      I => N8,
      O => N8_0
    );
  N8_YUSED : X_BUF
    generic map(
      LOC => "CLB_R22C28.S0"
    )
    port map (
      I => N16,
      O => N16_0
    );
  reg_LINES_6_chX_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"E2EE",
      LOC => "CLB_R16C30.S0"
    )
    port map (
      ADR0 => N7,
      ADR1 => s0_IBUF_0,
      ADR2 => N8_0,
      ADR3 => reg_chA_trigger_jk_t_437,
      O => reg_LINES_6_chX_trigger_jk_t_not0001
    );
  reg_LINES_6_chX_trigger_jk_t_not0001_YUSED : X_BUF
    generic map(
      LOC => "CLB_R16C30.S0"
    )
    port map (
      I => reg_LINES_6_chX_trigger_jk_t_not0001,
      O => reg_LINES_6_chX_trigger_jk_t_not0001_0
    );
  divider_internal_clock_signal : X_SFF
    generic map(
      LOC => "CLB_R26C25.S1",
      INIT => '1'
    )
    port map (
      I => divider_internal_clock_signal_mux000092_1011,
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => divider_internal_clock_signal_mux000042_0,
      SRST => GND,
      O => divider_internal_clock_signal_444
    );
  divider_internal_clock_signal_mux000092_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "CLB_R26C25.S1"
    )
    port map (
      ADR0 => divider_internal_count(8),
      ADR1 => divider_internal_count(2),
      ADR2 => divider_internal_count(9),
      ADR3 => divider_internal_count(3),
      O => N21_pack_1
    );
  divider_internal_clock_signal_mux000092 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "CLB_R26C25.S1"
    )
    port map (
      ADR0 => divider_internal_clock_signal_mux000090_0,
      ADR1 => divider_internal_count(1),
      ADR2 => divider_internal_count(0),
      ADR3 => N21,
      O => divider_internal_clock_signal_mux000092_1011
    );
  divider_internal_clock_signal_XUSED : X_BUF
    generic map(
      LOC => "CLB_R26C25.S1"
    )
    port map (
      I => N21_pack_1,
      O => N21
    );
  divider_internal_clock_signal_mux00008 : X_LUT4
    generic map(
      INIT => X"33FF",
      LOC => "CLB_R25C24.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => divider_internal_count(7),
      ADR2 => VCC,
      ADR3 => divider_internal_count(8),
      O => divider_internal_clock_signal_mux00008_1025
    );
  divider_internal_clock_signal_mux000090 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R25C24.S0"
    )
    port map (
      ADR0 => divider_internal_count(5),
      ADR1 => divider_internal_count(4),
      ADR2 => divider_internal_count(6),
      ADR3 => divider_internal_count(7),
      O => divider_internal_clock_signal_mux000090_1024
    );
  divider_internal_clock_signal_mux00008_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S0"
    )
    port map (
      I => divider_internal_clock_signal_mux00008_1025,
      O => divider_internal_clock_signal_mux00008_0
    );
  divider_internal_clock_signal_mux00008_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S0"
    )
    port map (
      I => divider_internal_clock_signal_mux000090_1024,
      O => divider_internal_clock_signal_mux000090_0
    );
  reg_LINES_3_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R15C28.S0"
    )
    port map (
      IA => reg_LINES_3_chX_dff_in2_559,
      IB => reg_LINES_3_chX_dff_in1_560,
      SEL => s1_IBUF_0,
      O => reg_LINES_3_chX_dff_in
    );
  reg_LINES_3_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"E200",
      LOC => "CLB_R15C28.S0"
    )
    port map (
      ADR0 => reg_LINES_2_chX_trigger_jk_t_404,
      ADR1 => s0_IBUF_0,
      ADR2 => data_3_0,
      ADR3 => invCLR_IBUF_0,
      O => reg_LINES_3_chX_dff_in1_560
    );
  reg_LINES_3_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "CLB_R15C28.S0"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => s0_IBUF_0,
      ADR2 => reg_LINES_4_chX_trigger_jk_t_411,
      ADR3 => reg_LINES_3_chX_trigger_jk_t_406,
      O => reg_LINES_3_chX_dff_in2_559
    );
  reg_LINES_3_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C28.S0"
    )
    port map (
      I => reg_LINES_3_chX_dff_in,
      O => reg_LINES_3_chX_dff_in_0
    );
  divider_internal_count_1 : X_SFF
    generic map(
      LOC => "CLB_R27C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(1),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(1)
    );
  divider_internal_count_0 : X_SFF
    generic map(
      LOC => "CLB_R27C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(0),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(0)
    );
  divider_internal_count_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      O => divider_internal_count_0_LOGIC_ZERO_575
    );
  divider_internal_Mcount_count_cy_0_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      IA => GLOBAL_LOGIC1,
      IB => divider_internal_count_0_CYINIT_576,
      SEL => divider_internal_Mcount_count_lut(0),
      O => divider_internal_Mcount_count_cy_0_Q_577
    );
  divider_internal_Mcount_count_xor_0_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      I0 => divider_internal_count_0_CYINIT_576,
      I1 => divider_internal_Mcount_count_lut(0),
      O => divider_internal_Result(0)
    );
  divider_internal_Mcount_count_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "CLB_R27C24.S1"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(0),
      O => divider_internal_Mcount_count_lut(0)
    );
  divider_internal_count_0_G : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R27C24.S1"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(1),
      O => divider_internal_count_0_GROM
    );
  divider_internal_Mcount_count_cy_1_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      IA => GLOBAL_LOGIC0,
      IB => divider_internal_Mcount_count_cy_0_Q_577,
      SEL => divider_internal_count_0_GROM,
      O => divider_internal_count_0_CYMUXG
    );
  divider_internal_Mcount_count_xor_1_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      I0 => divider_internal_Mcount_count_cy_0_Q_577,
      I1 => divider_internal_count_0_GROM,
      O => divider_internal_Result(1)
    );
  divider_internal_count_0_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R27C24.S1"
    )
    port map (
      I => divider_internal_count_0_LOGIC_ZERO_575,
      O => divider_internal_count_0_CYINIT_576
    );
  divider_internal_count_3 : X_SFF
    generic map(
      LOC => "CLB_R26C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(3),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(3)
    );
  divider_internal_count_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      O => divider_internal_count_2_LOGIC_ZERO_606
    );
  divider_internal_Mcount_count_cy_2_Q : X_MUX2
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      IA => divider_internal_count_2_LOGIC_ZERO_606,
      IB => divider_internal_count_2_CYINIT_603,
      SEL => divider_internal_count_2_FROM,
      O => divider_internal_Mcount_count_cy_2_Q_604
    );
  divider_internal_Mcount_count_xor_2_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I0 => divider_internal_count_2_CYINIT_603,
      I1 => divider_internal_count_2_FROM,
      O => divider_internal_Result(2)
    );
  divider_internal_count_2_F : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R26C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(2),
      O => divider_internal_count_2_FROM
    );
  divider_internal_count_2_G : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R26C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => divider_internal_count(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => divider_internal_count_2_GROM
    );
  divider_internal_Mcount_count_cy_3_Q : X_MUX2
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      IA => divider_internal_count_2_LOGIC_ZERO_606,
      IB => divider_internal_Mcount_count_cy_2_Q_604,
      SEL => divider_internal_count_2_GROM,
      O => divider_internal_count_2_CYMUXG
    );
  divider_internal_Mcount_count_xor_3_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I0 => divider_internal_Mcount_count_cy_2_Q_604,
      I1 => divider_internal_count_2_GROM,
      O => divider_internal_Result(3)
    );
  divider_internal_count_2_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I => divider_internal_count_0_CYMUXG,
      O => divider_internal_count_2_CYINIT_603
    );
  divider_internal_count_2 : X_SFF
    generic map(
      LOC => "CLB_R26C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(2),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(2)
    );
  divider_internal_count_5 : X_SFF
    generic map(
      LOC => "CLB_R25C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(5),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(5)
    );
  divider_internal_count_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      O => divider_internal_count_4_LOGIC_ZERO_636
    );
  divider_internal_Mcount_count_cy_4_Q : X_MUX2
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      IA => divider_internal_count_4_LOGIC_ZERO_636,
      IB => divider_internal_count_4_CYINIT_633,
      SEL => divider_internal_count_4_FROM,
      O => divider_internal_Mcount_count_cy_4_Q_634
    );
  divider_internal_Mcount_count_xor_4_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      I0 => divider_internal_count_4_CYINIT_633,
      I1 => divider_internal_count_4_FROM,
      O => divider_internal_Result(4)
    );
  divider_internal_count_4_F : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R25C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => divider_internal_count(4),
      ADR3 => VCC,
      O => divider_internal_count_4_FROM
    );
  divider_internal_count_4_G : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R25C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(5),
      O => divider_internal_count_4_GROM
    );
  divider_internal_Mcount_count_cy_5_Q : X_MUX2
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      IA => divider_internal_count_4_LOGIC_ZERO_636,
      IB => divider_internal_Mcount_count_cy_4_Q_634,
      SEL => divider_internal_count_4_GROM,
      O => divider_internal_count_4_CYMUXG
    );
  divider_internal_Mcount_count_xor_5_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      I0 => divider_internal_Mcount_count_cy_4_Q_634,
      I1 => divider_internal_count_4_GROM,
      O => divider_internal_Result(5)
    );
  divider_internal_count_4_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      I => divider_internal_count_2_CYMUXG,
      O => divider_internal_count_4_CYINIT_633
    );
  divider_internal_count_4 : X_SFF
    generic map(
      LOC => "CLB_R25C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(4),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(4)
    );
  divider_internal_count_7 : X_SFF
    generic map(
      LOC => "CLB_R24C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(7),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(7)
    );
  divider_internal_count_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      O => divider_internal_count_6_LOGIC_ZERO_666
    );
  divider_internal_Mcount_count_cy_6_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      IA => divider_internal_count_6_LOGIC_ZERO_666,
      IB => divider_internal_count_6_CYINIT_663,
      SEL => divider_internal_count_6_FROM,
      O => divider_internal_Mcount_count_cy_6_Q_664
    );
  divider_internal_Mcount_count_xor_6_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I0 => divider_internal_count_6_CYINIT_663,
      I1 => divider_internal_count_6_FROM,
      O => divider_internal_Result(6)
    );
  divider_internal_count_6_F : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R24C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => divider_internal_count(6),
      ADR3 => VCC,
      O => divider_internal_count_6_FROM
    );
  divider_internal_count_6_G : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R24C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(7),
      O => divider_internal_count_6_GROM
    );
  divider_internal_Mcount_count_cy_7_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      IA => divider_internal_count_6_LOGIC_ZERO_666,
      IB => divider_internal_Mcount_count_cy_6_Q_664,
      SEL => divider_internal_count_6_GROM,
      O => divider_internal_count_6_CYMUXG
    );
  divider_internal_Mcount_count_xor_7_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I0 => divider_internal_Mcount_count_cy_6_Q_664,
      I1 => divider_internal_count_6_GROM,
      O => divider_internal_Result(7)
    );
  divider_internal_count_6_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I => divider_internal_count_4_CYMUXG,
      O => divider_internal_count_6_CYINIT_663
    );
  divider_internal_count_6 : X_SFF
    generic map(
      LOC => "CLB_R24C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(6),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(6)
    );
  divider_internal_count_9 : X_SFF
    generic map(
      LOC => "CLB_R23C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(9),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(9)
    );
  divider_internal_count_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R23C24.S1"
    )
    port map (
      O => divider_internal_count_8_LOGIC_ZERO_707
    );
  divider_internal_Mcount_count_cy_8_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C24.S1"
    )
    port map (
      IA => divider_internal_count_8_LOGIC_ZERO_707,
      IB => divider_internal_count_8_CYINIT_692,
      SEL => divider_internal_count_8_FROM,
      O => divider_internal_Mcount_count_cy_8_Q_693
    );
  divider_internal_Mcount_count_xor_8_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C24.S1"
    )
    port map (
      I0 => divider_internal_count_8_CYINIT_692,
      I1 => divider_internal_count_8_FROM,
      O => divider_internal_Result(8)
    );
  divider_internal_count_8_F : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R23C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(8),
      O => divider_internal_count_8_FROM
    );
  divider_internal_count_9_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "CLB_R23C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => divider_internal_count(9),
      O => divider_internal_count_9_rt_694
    );
  divider_internal_Mcount_count_xor_9_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C24.S1"
    )
    port map (
      I0 => divider_internal_Mcount_count_cy_8_Q_693,
      I1 => divider_internal_count_9_rt_694,
      O => divider_internal_Result(9)
    );
  divider_internal_count_8_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R23C24.S1"
    )
    port map (
      I => divider_internal_count_6_CYMUXG,
      O => divider_internal_count_8_CYINIT_692
    );
  divider_internal_count_8 : X_SFF
    generic map(
      LOC => "CLB_R23C24.S1",
      INIT => '0'
    )
    port map (
      I => divider_internal_Result(8),
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count_cmp_eq0000_0,
      O => divider_internal_count(8)
    );
  divider_internal_count_cmp_eq000024_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "CLB_R26C24.S0"
    )
    port map (
      ADR0 => divider_internal_count(6),
      ADR1 => divider_internal_count(9),
      ADR2 => divider_internal_count(8),
      ADR3 => divider_internal_count(7),
      O => divider_internal_count_cmp_eq000024_SW0_O_pack_1
    );
  divider_internal_count_cmp_eq000024 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "CLB_R26C24.S0"
    )
    port map (
      ADR0 => divider_internal_count(4),
      ADR1 => divider_internal_count(5),
      ADR2 => divider_internal_count_cmp_eq000016_0,
      ADR3 => divider_internal_count_cmp_eq000024_SW0_O,
      O => divider_internal_count_cmp_eq0000
    );
  divider_internal_count_cmp_eq000024_SW0_O_XUSED : X_BUF
    generic map(
      LOC => "CLB_R26C24.S0"
    )
    port map (
      I => divider_internal_count_cmp_eq000024_SW0_O_pack_1,
      O => divider_internal_count_cmp_eq000024_SW0_O
    );
  divider_internal_count_cmp_eq000024_SW0_O_YUSED : X_BUF
    generic map(
      LOC => "CLB_R26C24.S0"
    )
    port map (
      I => divider_internal_count_cmp_eq0000,
      O => divider_internal_count_cmp_eq0000_0
    );
  reg_LINES_4_chX_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"757F",
      LOC => "CLB_R15C29.S1"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => reg_LINES_5_chX_trigger_jk_t_432,
      ADR2 => s0_IBUF_0,
      ADR3 => reg_LINES_4_chX_trigger_jk_t_411,
      O => N13_pack_1
    );
  reg_LINES_4_chX_dff_in : X_LUT4
    generic map(
      INIT => X"085D",
      LOC => "CLB_R15C29.S1"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => reg_LINES_3_chX_trigger_jk_t_406,
      ADR2 => N14_0,
      ADR3 => N13,
      O => reg_LINES_4_chX_dff_in_730
    );
  N13_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C29.S1"
    )
    port map (
      I => N13_pack_1,
      O => N13
    );
  N13_YUSED : X_BUF
    generic map(
      LOC => "CLB_R15C29.S1"
    )
    port map (
      I => reg_LINES_4_chX_dff_in_730,
      O => reg_LINES_4_chX_dff_in_0
    );
  reg_LINES_6_chX_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"2F7F",
      LOC => "CLB_R16C30.S1"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => reg_LINES_5_chX_trigger_jk_t_432,
      ADR2 => invCLR_IBUF_0,
      ADR3 => reg_LINES_6_chX_trigger_jk_t_436,
      O => N7_pack_1
    );
  reg_LINES_6_chX_dff_in : X_LUT4
    generic map(
      INIT => X"4073",
      LOC => "CLB_R16C30.S1"
    )
    port map (
      ADR0 => N8_0,
      ADR1 => s0_IBUF_0,
      ADR2 => reg_chA_trigger_jk_t_437,
      ADR3 => N7,
      O => reg_LINES_6_chX_dff_in_742
    );
  N7_XUSED : X_BUF
    generic map(
      LOC => "CLB_R16C30.S1"
    )
    port map (
      I => N7_pack_1,
      O => N7
    );
  N7_YUSED : X_BUF
    generic map(
      LOC => "CLB_R16C30.S1"
    )
    port map (
      I => reg_LINES_6_chX_dff_in_742,
      O => reg_LINES_6_chX_dff_in_0
    );
  reg_chA_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"D3DF",
      LOC => "CLB_R12C32.S1"
    )
    port map (
      ADR0 => sbit_IBUF_0,
      ADR1 => s1_IBUF_0,
      ADR2 => s0_IBUF_0,
      ADR3 => reg_LINES_6_chX_trigger_jk_t_436,
      O => N4_pack_1
    );
  reg_chA_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"BFB3",
      LOC => "CLB_R12C32.S1"
    )
    port map (
      ADR0 => N5,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_chA_trigger_jk_t_437,
      ADR3 => N4,
      O => reg_chA_trigger_jk_t_not0001
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "CLB_R12C32.S1"
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "CLB_R12C32.S1"
    )
    port map (
      I => reg_chA_trigger_jk_t_not0001,
      O => reg_chA_trigger_jk_t_not0001_0
    );
  divider_internal_clock_signal_mux000027 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "CLB_R25C25.S0"
    )
    port map (
      ADR0 => divider_internal_count(6),
      ADR1 => divider_internal_count(5),
      ADR2 => divider_internal_count(4),
      ADR3 => divider_internal_count(2),
      O => divider_internal_clock_signal_mux000027_O_pack_1
    );
  divider_internal_clock_signal_mux000042 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "CLB_R25C25.S0"
    )
    port map (
      ADR0 => divider_internal_clock_signal_mux00004_0,
      ADR1 => divider_internal_clock_signal_444,
      ADR2 => divider_internal_clock_signal_mux00008_0,
      ADR3 => divider_internal_clock_signal_mux000027_O,
      O => divider_internal_clock_signal_mux000042_766
    );
  divider_internal_clock_signal_mux000027_O_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C25.S0"
    )
    port map (
      I => divider_internal_clock_signal_mux000027_O_pack_1,
      O => divider_internal_clock_signal_mux000027_O
    );
  divider_internal_clock_signal_mux000027_O_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C25.S0"
    )
    port map (
      I => divider_internal_clock_signal_mux000042_766,
      O => divider_internal_clock_signal_mux000042_0
    );
  reg_LINES_5_chX_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"757F",
      LOC => "CLB_R15C30.S0"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => reg_LINES_4_chX_trigger_jk_t_411,
      ADR2 => s1_IBUF_0,
      ADR3 => reg_LINES_5_chX_trigger_jk_t_432,
      O => N10_pack_1
    );
  reg_LINES_5_chX_dff_in : X_LUT4
    generic map(
      INIT => X"4073",
      LOC => "CLB_R15C30.S0"
    )
    port map (
      ADR0 => N8_0,
      ADR1 => s0_IBUF_0,
      ADR2 => reg_LINES_6_chX_trigger_jk_t_436,
      ADR3 => N10,
      O => reg_LINES_5_chX_dff_in_778
    );
  N10_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C30.S0"
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  N10_YUSED : X_BUF
    generic map(
      LOC => "CLB_R15C30.S0"
    )
    port map (
      I => reg_LINES_5_chX_dff_in_778,
      O => reg_LINES_5_chX_dff_in_0
    );
  reg_chA_dff_in_SW1 : X_LUT4
    generic map(
      INIT => X"A2F2",
      LOC => "CLB_R12C32.S0"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => reg_LINES_6_chX_trigger_jk_t_436,
      ADR2 => s0_IBUF_0,
      ADR3 => sbit_IBUF_0,
      O => N5_pack_1
    );
  reg_chA_dff_in : X_LUT4
    generic map(
      INIT => X"3500",
      LOC => "CLB_R12C32.S0"
    )
    port map (
      ADR0 => N4,
      ADR1 => N5,
      ADR2 => reg_chA_trigger_jk_t_437,
      ADR3 => invCLR_IBUF_0,
      O => reg_chA_dff_in_790
    );
  N5_XUSED : X_BUF
    generic map(
      LOC => "CLB_R12C32.S0"
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  N5_YUSED : X_BUF
    generic map(
      LOC => "CLB_R12C32.S0"
    )
    port map (
      I => reg_chA_dff_in_790,
      O => reg_chA_dff_in_0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  clk_BUFGP_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "GCLKBUF1"
    )
    port map (
      I => clk,
      O => clk_BUFGP
    );
  NlwBlock_blinkenlights_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_blinkenlights_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

