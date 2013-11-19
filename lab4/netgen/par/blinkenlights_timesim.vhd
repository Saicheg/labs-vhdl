--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: blinkenlights_timesim.vhd
-- /___/   /\     Timestamp: Tue Nov 19 18:55:11 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf blinkenlights.pcf -rpw 100 -tpw 0 -ar Structure -tm blinkenlights -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim blinkenlights.ncd blinkenlights_timesim.vhd 
-- Device	: 2s200fg256-5 (PRODUCTION 1.27 2008-01-09)
-- Input file	: blinkenlights.ncd
-- Output file	: D:\work\Projects\labs_vhdl\lab4\netgen\par\blinkenlights_timesim.vhd
-- # of Entities	: 1
-- Design Name	: blinkenlights
-- Xilinx	: D:\work\soft\Xilinx\10.1\ISE
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
    invOE : in STD_LOGIC := 'X'; 
    sbit : in STD_LOGIC := 'X'; 
    lights : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    data_in : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end blinkenlights;

architecture Structure of blinkenlights is
  signal invCLR_IBUF_0 : STD_LOGIC; 
  signal sbit_IBUF_0 : STD_LOGIC; 
  signal invOE_IBUF_0 : STD_LOGIC; 
  signal data_1_0 : STD_LOGIC; 
  signal data_2_0 : STD_LOGIC; 
  signal data_5_0 : STD_LOGIC; 
  signal data_6_0 : STD_LOGIC; 
  signal data_7_0 : STD_LOGIC; 
  signal data_in_0_IBUF_0 : STD_LOGIC; 
  signal data_in_1_IBUF_0 : STD_LOGIC; 
  signal data_in_2_IBUF_0 : STD_LOGIC; 
  signal s0_IBUF_0 : STD_LOGIC; 
  signal s1_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_287 : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_288 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_289 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_291 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_292 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_293 : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_295 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_299 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in_0 : STD_LOGIC; 
  signal reg_chH_dff_in_0 : STD_LOGIC; 
  signal reg_chA_dff_in_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal reg_LINES_4_chX_dff_in_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in_0 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal data_and0000_inv : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_not0001_0 : STD_LOGIC; 
  signal invCLR_IBUF_315 : STD_LOGIC; 
  signal sbit_IBUF_320 : STD_LOGIC; 
  signal invOE_IBUF_323 : STD_LOGIC; 
  signal lights_0_TORGTS : STD_LOGIC; 
  signal lights_0_OUTMUX_328 : STD_LOGIC; 
  signal lights_1_TORGTS : STD_LOGIC; 
  signal lights_1_OUTMUX_334 : STD_LOGIC; 
  signal lights_2_TORGTS : STD_LOGIC; 
  signal lights_2_OUTMUX_340 : STD_LOGIC; 
  signal lights_3_TORGTS : STD_LOGIC; 
  signal lights_3_OUTMUX_346 : STD_LOGIC; 
  signal lights_4_TORGTS : STD_LOGIC; 
  signal lights_4_OUTMUX_352 : STD_LOGIC; 
  signal lights_5_TORGTS : STD_LOGIC; 
  signal lights_5_OUTMUX_358 : STD_LOGIC; 
  signal data_in_0_IBUF_362 : STD_LOGIC; 
  signal data_in_1_IBUF_365 : STD_LOGIC; 
  signal data_in_2_IBUF_368 : STD_LOGIC; 
  signal s0_IBUF_371 : STD_LOGIC; 
  signal s1_IBUF_374 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in1_389 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in2_388 : STD_LOGIC; 
  signal reg_LINES_1_chX_dff_in : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in1_402 : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in2_401 : STD_LOGIC; 
  signal reg_LINES_6_chX_dff_in : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in1_415 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in2_414 : STD_LOGIC; 
  signal reg_LINES_2_chX_dff_in : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N11_GROM : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N12_GROM : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in1_454 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in2_453 : STD_LOGIC; 
  signal reg_LINES_5_chX_dff_in : STD_LOGIC; 
  signal reg_chH_dff_in1_467 : STD_LOGIC; 
  signal reg_chH_dff_in2_466 : STD_LOGIC; 
  signal reg_chH_dff_in : STD_LOGIC; 
  signal reg_chA_dff_in1_480 : STD_LOGIC; 
  signal reg_chA_dff_in2_479 : STD_LOGIC; 
  signal reg_chA_dff_in : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal reg_LINES_4_chX_dff_in_491 : STD_LOGIC; 
  signal N8_pack_1 : STD_LOGIC; 
  signal reg_LINES_3_chX_dff_in_503 : STD_LOGIC; 
  signal data_7_Q : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_chA_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal data_5_Q : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_5_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal data_1_Q : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_1_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal data_6_Q : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_6_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal data_0_Q : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_chH_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_3_chX_trigger_jk_t_not0001 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_mux0000 : STD_LOGIC; 
  signal reg_LINES_2_chX_trigger_jk_t_CEMUXNOT : STD_LOGIC; 
  signal divider_internal_count_0_LOGIC_ONE_663 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal data_and0000_inv_pack_1 : STD_LOGIC; 
  signal data_2_Q : STD_LOGIC; 
  signal reg_LINES_4_chX_trigger_jk_t_not0001 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal divider_internal_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  invCLR_IMUX : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => invCLR_IBUF_315,
      O => invCLR_IBUF_0
    );
  invCLR_IBUF : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => invCLR,
      O => invCLR_IBUF_315
    );
  sbit_IMUX : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => sbit_IBUF_320,
      O => sbit_IBUF_0
    );
  sbit_IBUF : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => sbit,
      O => sbit_IBUF_320
    );
  invOE_IMUX : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => invOE_IBUF_323,
      O => invOE_IBUF_0
    );
  invOE_IBUF : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => invOE,
      O => invOE_IBUF_323
    );
  lights_0_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => lights_0_OUTMUX_328,
      CTL => lights_0_TORGTS,
      O => lights(0)
    );
  lights_0_GTS_OR : X_BUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_0_TORGTS
    );
  lights_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => data_0_Q,
      O => lights_0_OUTMUX_328
    );
  lights_1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => lights_1_OUTMUX_334,
      CTL => lights_1_TORGTS,
      O => lights(1)
    );
  lights_1_GTS_OR : X_BUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_1_TORGTS
    );
  lights_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => data_1_0,
      O => lights_1_OUTMUX_334
    );
  lights_2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => lights_2_OUTMUX_340,
      CTL => lights_2_TORGTS,
      O => lights(2)
    );
  lights_2_GTS_OR : X_BUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_2_TORGTS
    );
  lights_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => data_2_0,
      O => lights_2_OUTMUX_340
    );
  lights_3_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => lights_3_OUTMUX_346,
      CTL => lights_3_TORGTS,
      O => lights(3)
    );
  lights_3_GTS_OR : X_BUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_3_TORGTS
    );
  lights_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => data_5_0,
      O => lights_3_OUTMUX_346
    );
  lights_4_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => lights_4_OUTMUX_352,
      CTL => lights_4_TORGTS,
      O => lights(4)
    );
  lights_4_GTS_OR : X_BUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_4_TORGTS
    );
  lights_4_OUTMUX : X_BUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => data_6_0,
      O => lights_4_OUTMUX_352
    );
  lights_5_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => lights_5_OUTMUX_358,
      CTL => lights_5_TORGTS,
      O => lights(5)
    );
  lights_5_GTS_OR : X_BUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => invOE_IBUF_0,
      O => lights_5_TORGTS
    );
  lights_5_OUTMUX : X_BUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => data_7_0,
      O => lights_5_OUTMUX_358
    );
  data_in_0_IMUX : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => data_in_0_IBUF_362,
      O => data_in_0_IBUF_0
    );
  data_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => data_in(0),
      O => data_in_0_IBUF_362
    );
  data_in_1_IMUX : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => data_in_1_IBUF_365,
      O => data_in_1_IBUF_0
    );
  data_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => data_in(1),
      O => data_in_1_IBUF_365
    );
  data_in_2_IMUX : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => data_in_2_IBUF_368,
      O => data_in_2_IBUF_0
    );
  data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => data_in(2),
      O => data_in_2_IBUF_368
    );
  s0_IMUX : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => s0_IBUF_371,
      O => s0_IBUF_0
    );
  s0_IBUF : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => s0,
      O => s0_IBUF_371
    );
  s1_IMUX : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => s1_IBUF_374,
      O => s1_IBUF_0
    );
  s1_IBUF : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => s1,
      O => s1_IBUF_374
    );
  reg_LINES_1_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R23C25.S1"
    )
    port map (
      IA => reg_LINES_1_chX_dff_in2_388,
      IB => reg_LINES_1_chX_dff_in1_389,
      SEL => s1_IBUF_0,
      O => reg_LINES_1_chX_dff_in
    );
  reg_LINES_1_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "CLB_R23C25.S1"
    )
    port map (
      ADR0 => data_1_0,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_chH_trigger_jk_t_287,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_1_chX_dff_in1_389
    );
  reg_LINES_1_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "CLB_R23C25.S1"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => reg_LINES_2_chX_trigger_jk_t_289,
      ADR2 => reg_LINES_1_chX_trigger_jk_t_288,
      ADR3 => invCLR_IBUF_0,
      O => reg_LINES_1_chX_dff_in2_388
    );
  reg_LINES_1_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R23C25.S1"
    )
    port map (
      I => reg_LINES_1_chX_dff_in,
      O => reg_LINES_1_chX_dff_in_0
    );
  reg_LINES_6_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R13C34.S0"
    )
    port map (
      IA => reg_LINES_6_chX_dff_in2_401,
      IB => reg_LINES_6_chX_dff_in1_402,
      SEL => s1_IBUF_0,
      O => reg_LINES_6_chX_dff_in
    );
  reg_LINES_6_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "CLB_R13C34.S0"
    )
    port map (
      ADR0 => data_6_0,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_LINES_5_chX_trigger_jk_t_291,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_6_chX_dff_in1_402
    );
  reg_LINES_6_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"E400",
      LOC => "CLB_R13C34.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => reg_LINES_6_chX_trigger_jk_t_292,
      ADR2 => reg_chA_trigger_jk_t_293,
      ADR3 => invCLR_IBUF_0,
      O => reg_LINES_6_chX_dff_in2_401
    );
  reg_LINES_6_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R13C34.S0"
    )
    port map (
      I => reg_LINES_6_chX_dff_in,
      O => reg_LINES_6_chX_dff_in_0
    );
  reg_LINES_2_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R18C29.S1"
    )
    port map (
      IA => reg_LINES_2_chX_dff_in2_414,
      IB => reg_LINES_2_chX_dff_in1_415,
      SEL => s1_IBUF_0,
      O => reg_LINES_2_chX_dff_in
    );
  reg_LINES_2_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"E020",
      LOC => "CLB_R18C29.S1"
    )
    port map (
      ADR0 => reg_LINES_1_chX_trigger_jk_t_288,
      ADR1 => s0_IBUF_0,
      ADR2 => invCLR_IBUF_0,
      ADR3 => data_2_0,
      O => reg_LINES_2_chX_dff_in1_415
    );
  reg_LINES_2_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "CLB_R18C29.S1"
    )
    port map (
      ADR0 => reg_LINES_3_chX_trigger_jk_t_295,
      ADR1 => reg_LINES_2_chX_trigger_jk_t_289,
      ADR2 => invCLR_IBUF_0,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_2_chX_dff_in2_414
    );
  reg_LINES_2_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R18C29.S1"
    )
    port map (
      I => reg_LINES_2_chX_dff_in,
      O => reg_LINES_2_chX_dff_in_0
    );
  data_0_LogicTrst1_SW0 : X_MUX2
    generic map(
      LOC => "CLB_R25C23.S1"
    )
    port map (
      IA => N11_GROM,
      IB => N15,
      SEL => invCLR_IBUF_0,
      O => N11
    );
  data_0_LogicTrst1_SW0_G : X_LUT4
    generic map(
      INIT => X"E222",
      LOC => "CLB_R25C23.S1"
    )
    port map (
      ADR0 => sbit_IBUF_0,
      ADR1 => s0_IBUF_0,
      ADR2 => data_in_0_IBUF_0,
      ADR3 => s1_IBUF_0,
      O => N15
    );
  N11_G : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "CLB_R25C23.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N11_GROM
    );
  N11_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C23.S1"
    )
    port map (
      I => N11,
      O => N11_0
    );
  data_0_LogicTrst1_SW1 : X_MUX2
    generic map(
      LOC => "CLB_R25C23.S0"
    )
    port map (
      IA => N12_GROM,
      IB => N17,
      SEL => invCLR_IBUF_0,
      O => N12
    );
  data_0_LogicTrst1_SW1_G : X_LUT4
    generic map(
      INIT => X"FA72",
      LOC => "CLB_R25C23.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => s1_IBUF_0,
      ADR2 => sbit_IBUF_0,
      ADR3 => data_in_0_IBUF_0,
      O => N17
    );
  N12_G : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "CLB_R25C23.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N12_GROM
    );
  N12_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C23.S0"
    )
    port map (
      I => N12,
      O => N12_0
    );
  reg_LINES_5_chX_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R14C34.S0"
    )
    port map (
      IA => reg_LINES_5_chX_dff_in2_453,
      IB => reg_LINES_5_chX_dff_in1_454,
      SEL => s1_IBUF_0,
      O => reg_LINES_5_chX_dff_in
    );
  reg_LINES_5_chX_dff_in1 : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "CLB_R14C34.S0"
    )
    port map (
      ADR0 => data_5_0,
      ADR1 => reg_LINES_4_chX_trigger_jk_t_299,
      ADR2 => invCLR_IBUF_0,
      ADR3 => s0_IBUF_0,
      O => reg_LINES_5_chX_dff_in1_454
    );
  reg_LINES_5_chX_dff_in2 : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "CLB_R14C34.S0"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_LINES_5_chX_trigger_jk_t_291,
      ADR3 => reg_LINES_6_chX_trigger_jk_t_292,
      O => reg_LINES_5_chX_dff_in2_453
    );
  reg_LINES_5_chX_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R14C34.S0"
    )
    port map (
      I => reg_LINES_5_chX_dff_in,
      O => reg_LINES_5_chX_dff_in_0
    );
  reg_chH_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R24C23.S1"
    )
    port map (
      IA => reg_chH_dff_in2_466,
      IB => reg_chH_dff_in1_467,
      SEL => s1_IBUF_0,
      O => reg_chH_dff_in
    );
  reg_chH_dff_in1 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "CLB_R24C23.S1"
    )
    port map (
      ADR0 => N12_0,
      ADR1 => N11_0,
      ADR2 => reg_chH_trigger_jk_t_287,
      ADR3 => invOE_IBUF_0,
      O => reg_chH_dff_in1_467
    );
  reg_chH_dff_in2 : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "CLB_R24C23.S1"
    )
    port map (
      ADR0 => s0_IBUF_0,
      ADR1 => reg_LINES_1_chX_trigger_jk_t_288,
      ADR2 => invCLR_IBUF_0,
      ADR3 => reg_chH_trigger_jk_t_287,
      O => reg_chH_dff_in2_466
    );
  reg_chH_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R24C23.S1"
    )
    port map (
      I => reg_chH_dff_in,
      O => reg_chH_dff_in_0
    );
  reg_chA_dff_in_f5 : X_MUX2
    generic map(
      LOC => "CLB_R15C29.S1"
    )
    port map (
      IA => reg_chA_dff_in2_479,
      IB => reg_chA_dff_in1_480,
      SEL => s1_IBUF_0,
      O => reg_chA_dff_in
    );
  reg_chA_dff_in1 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "CLB_R15C29.S1"
    )
    port map (
      ADR0 => data_7_0,
      ADR1 => invCLR_IBUF_0,
      ADR2 => reg_LINES_6_chX_trigger_jk_t_292,
      ADR3 => s0_IBUF_0,
      O => reg_chA_dff_in1_480
    );
  reg_chA_dff_in2 : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "CLB_R15C29.S1"
    )
    port map (
      ADR0 => sbit_IBUF_0,
      ADR1 => reg_chA_trigger_jk_t_293,
      ADR2 => s0_IBUF_0,
      ADR3 => invCLR_IBUF_0,
      O => reg_chA_dff_in2_479
    );
  reg_chA_dff_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C29.S1"
    )
    port map (
      I => reg_chA_dff_in,
      O => reg_chA_dff_in_0
    );
  reg_LINES_4_chX_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"775F",
      LOC => "CLB_R15C32.S0"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => reg_LINES_3_chX_trigger_jk_t_295,
      ADR2 => reg_LINES_4_chX_trigger_jk_t_299,
      ADR3 => s1_IBUF_0,
      O => N5_pack_1
    );
  reg_LINES_4_chX_dff_in : X_LUT4
    generic map(
      INIT => X"4073",
      LOC => "CLB_R15C32.S0"
    )
    port map (
      ADR0 => N6_0,
      ADR1 => s0_IBUF_0,
      ADR2 => reg_LINES_5_chX_trigger_jk_t_291,
      ADR3 => N5,
      O => reg_LINES_4_chX_dff_in_491
    );
  N5_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C32.S0"
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  N5_YUSED : X_BUF
    generic map(
      LOC => "CLB_R15C32.S0"
    )
    port map (
      I => reg_LINES_4_chX_dff_in_491,
      O => reg_LINES_4_chX_dff_in_0
    );
  reg_LINES_3_chX_dff_in_SW0 : X_LUT4
    generic map(
      INIT => X"57F7",
      LOC => "CLB_R18C30.S0"
    )
    port map (
      ADR0 => invCLR_IBUF_0,
      ADR1 => reg_LINES_3_chX_trigger_jk_t_295,
      ADR2 => s0_IBUF_0,
      ADR3 => reg_LINES_4_chX_trigger_jk_t_299,
      O => N8_pack_1
    );
  reg_LINES_3_chX_dff_in : X_LUT4
    generic map(
      INIT => X"083B",
      LOC => "CLB_R18C30.S0"
    )
    port map (
      ADR0 => reg_LINES_2_chX_trigger_jk_t_289,
      ADR1 => s1_IBUF_0,
      ADR2 => N9_0,
      ADR3 => N8,
      O => reg_LINES_3_chX_dff_in_503
    );
  N8_XUSED : X_BUF
    generic map(
      LOC => "CLB_R18C30.S0"
    )
    port map (
      I => N8_pack_1,
      O => N8
    );
  N8_YUSED : X_BUF
    generic map(
      LOC => "CLB_R18C30.S0"
    )
    port map (
      I => reg_LINES_3_chX_dff_in_503,
      O => reg_LINES_3_chX_dff_in_0
    );
  data_7_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"7770",
      LOC => "CLB_R15C29.S0"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => s0_IBUF_0,
      ADR2 => invOE_IBUF_0,
      ADR3 => reg_chA_trigger_jk_t_293,
      O => data_7_Q
    );
  reg_chA_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R15C29.S0"
    )
    port map (
      ADR0 => reg_chA_dff_in_0,
      ADR1 => reg_chA_trigger_jk_t_293,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_chA_trigger_jk_t_mux0000
    );
  reg_chA_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R15C29.S0"
    )
    port map (
      I => reg_chA_dff_in_0,
      O => reg_chA_trigger_jk_t_CEMUXNOT
    );
  reg_chA_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R15C29.S0"
    )
    port map (
      I => data_7_Q,
      O => data_7_0
    );
  reg_chA_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R15C29.S0",
      INIT => '1'
    )
    port map (
      I => reg_chA_trigger_jk_t_mux0000,
      CE => reg_chA_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_chA_dff_in_0,
      SRST => GND,
      O => reg_chA_trigger_jk_t_293
    );
  data_5_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"32FA",
      LOC => "CLB_R14C34.S1"
    )
    port map (
      ADR0 => invOE_IBUF_0,
      ADR1 => s1_IBUF_0,
      ADR2 => reg_LINES_5_chX_trigger_jk_t_291,
      ADR3 => s0_IBUF_0,
      O => data_5_Q
    );
  reg_LINES_5_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "CLB_R14C34.S1"
    )
    port map (
      ADR0 => reg_LINES_5_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_LINES_5_chX_trigger_jk_t_291,
      O => reg_LINES_5_chX_trigger_jk_t_mux0000
    );
  reg_LINES_5_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R14C34.S1"
    )
    port map (
      I => reg_LINES_5_chX_dff_in_0,
      O => reg_LINES_5_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_5_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R14C34.S1"
    )
    port map (
      I => data_5_Q,
      O => data_5_0
    );
  reg_LINES_5_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R14C34.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_5_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_5_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_5_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_5_chX_trigger_jk_t_291
    );
  reg_LINES_3_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "CLB_R18C30.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_LINES_3_chX_dff_in_0,
      ADR2 => VCC,
      ADR3 => reg_LINES_3_chX_trigger_jk_t_295,
      O => reg_LINES_3_chX_trigger_jk_t_mux0000
    );
  reg_LINES_3_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R18C30.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_3_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_3_chX_trigger_jk_t_not0001_0,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_3_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_3_chX_trigger_jk_t_295
    );
  data_1_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"EEE2",
      LOC => "CLB_R23C25.S0"
    )
    port map (
      ADR0 => data_in_1_IBUF_0,
      ADR1 => data_and0000_inv,
      ADR2 => invOE_IBUF_0,
      ADR3 => reg_LINES_1_chX_trigger_jk_t_288,
      O => data_1_Q
    );
  reg_LINES_1_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R23C25.S0"
    )
    port map (
      ADR0 => reg_LINES_1_chX_dff_in_0,
      ADR1 => reg_LINES_1_chX_trigger_jk_t_288,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_LINES_1_chX_trigger_jk_t_mux0000
    );
  reg_LINES_1_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R23C25.S0"
    )
    port map (
      I => reg_LINES_1_chX_dff_in_0,
      O => reg_LINES_1_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_1_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R23C25.S0"
    )
    port map (
      I => data_1_Q,
      O => data_1_0
    );
  reg_LINES_1_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R23C25.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_1_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_1_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_1_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_1_chX_trigger_jk_t_288
    );
  data_6_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"54FC",
      LOC => "CLB_R13C34.S1"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => invOE_IBUF_0,
      ADR2 => reg_LINES_6_chX_trigger_jk_t_292,
      ADR3 => s0_IBUF_0,
      O => data_6_Q
    );
  reg_LINES_6_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "CLB_R13C34.S1"
    )
    port map (
      ADR0 => reg_LINES_6_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_LINES_6_chX_trigger_jk_t_292,
      O => reg_LINES_6_chX_trigger_jk_t_mux0000
    );
  reg_LINES_6_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R13C34.S1"
    )
    port map (
      I => reg_LINES_6_chX_dff_in_0,
      O => reg_LINES_6_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_6_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R13C34.S1"
    )
    port map (
      I => data_6_Q,
      O => data_6_0
    );
  reg_LINES_6_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R13C34.S1",
      INIT => '1'
    )
    port map (
      I => reg_LINES_6_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_6_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_6_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_6_chX_trigger_jk_t_292
    );
  data_0_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"EEF0",
      LOC => "CLB_R24C23.S0"
    )
    port map (
      ADR0 => reg_chH_trigger_jk_t_287,
      ADR1 => invOE_IBUF_0,
      ADR2 => data_in_0_IBUF_0,
      ADR3 => data_and0000_inv,
      O => data_0_Q
    );
  reg_chH_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R24C23.S0"
    )
    port map (
      ADR0 => reg_chH_dff_in_0,
      ADR1 => reg_chH_trigger_jk_t_287,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_chH_trigger_jk_t_mux0000
    );
  reg_chH_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R24C23.S0"
    )
    port map (
      I => reg_chH_dff_in_0,
      O => reg_chH_trigger_jk_t_CEMUXNOT
    );
  reg_chH_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R24C23.S0",
      INIT => '1'
    )
    port map (
      I => reg_chH_trigger_jk_t_mux0000,
      CE => reg_chH_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_chH_dff_in_0,
      SRST => GND,
      O => reg_chH_trigger_jk_t_287
    );
  reg_LINES_4_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "CLB_R14C32.S0"
    )
    port map (
      ADR0 => reg_LINES_4_chX_dff_in_0,
      ADR1 => VCC,
      ADR2 => reg_LINES_4_chX_trigger_jk_t_299,
      ADR3 => VCC,
      O => reg_LINES_4_chX_trigger_jk_t_mux0000
    );
  reg_LINES_4_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R14C32.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_4_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_4_chX_trigger_jk_t_not0001_0,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_4_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_4_chX_trigger_jk_t_299
    );
  reg_LINES_3_chX_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"D8FA",
      LOC => "CLB_R18C29.S0"
    )
    port map (
      ADR0 => s1_IBUF_0,
      ADR1 => N9_0,
      ADR2 => N8,
      ADR3 => reg_LINES_2_chX_trigger_jk_t_289,
      O => reg_LINES_3_chX_trigger_jk_t_not0001
    );
  reg_LINES_2_chX_trigger_jk_t_mux00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "CLB_R18C29.S0"
    )
    port map (
      ADR0 => reg_LINES_2_chX_dff_in_0,
      ADR1 => reg_LINES_2_chX_trigger_jk_t_289,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_LINES_2_chX_trigger_jk_t_mux0000
    );
  reg_LINES_2_chX_trigger_jk_t_CEMUX : X_INV
    generic map(
      LOC => "CLB_R18C29.S0"
    )
    port map (
      I => reg_LINES_2_chX_dff_in_0,
      O => reg_LINES_2_chX_trigger_jk_t_CEMUXNOT
    );
  reg_LINES_2_chX_trigger_jk_t_XUSED : X_BUF
    generic map(
      LOC => "CLB_R18C29.S0"
    )
    port map (
      I => reg_LINES_3_chX_trigger_jk_t_not0001,
      O => reg_LINES_3_chX_trigger_jk_t_not0001_0
    );
  reg_LINES_2_chX_trigger_jk_t : X_SFF
    generic map(
      LOC => "CLB_R18C29.S0",
      INIT => '1'
    )
    port map (
      I => reg_LINES_2_chX_trigger_jk_t_mux0000,
      CE => reg_LINES_2_chX_trigger_jk_t_CEMUXNOT,
      CLK => divider_internal_count(0),
      SET => GND,
      RST => GND,
      SSET => reg_LINES_2_chX_dff_in_0,
      SRST => GND,
      O => reg_LINES_2_chX_trigger_jk_t_289
    );
  divider_internal_count_0 : X_SFF
    generic map(
      LOC => "CLB_R20C26.S0",
      INIT => '0'
    )
    port map (
      I => divider_internal_count_0_LOGIC_ONE_663,
      CE => VCC,
      CLK => clk_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => divider_internal_count(0),
      O => divider_internal_count(0)
    );
  divider_internal_count_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "CLB_R20C26.S0"
    )
    port map (
      O => divider_internal_count_0_LOGIC_ONE_663
    );
  reg_LINES_3_chX_dff_in_SW1 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "CLB_R16C31.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => s0_IBUF_0,
      ADR2 => invCLR_IBUF_0,
      ADR3 => VCC,
      O => N9
    );
  reg_LINES_4_chX_dff_in_SW1 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "CLB_R16C31.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => s1_IBUF_0,
      ADR2 => invCLR_IBUF_0,
      ADR3 => VCC,
      O => N6
    );
  N9_XUSED : X_BUF
    generic map(
      LOC => "CLB_R16C31.S1"
    )
    port map (
      I => N9,
      O => N9_0
    );
  N9_YUSED : X_BUF
    generic map(
      LOC => "CLB_R16C31.S1"
    )
    port map (
      I => N6,
      O => N6_0
    );
  data_and0000_inv1 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "CLB_R21C28.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => s1_IBUF_0,
      ADR3 => s0_IBUF_0,
      O => data_and0000_inv_pack_1
    );
  data_2_LogicTrst1 : X_LUT4
    generic map(
      INIT => X"FAD8",
      LOC => "CLB_R21C28.S1"
    )
    port map (
      ADR0 => data_and0000_inv,
      ADR1 => invOE_IBUF_0,
      ADR2 => data_in_2_IBUF_0,
      ADR3 => reg_LINES_2_chX_trigger_jk_t_289,
      O => data_2_Q
    );
  data_and0000_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R21C28.S1"
    )
    port map (
      I => data_and0000_inv_pack_1,
      O => data_and0000_inv
    );
  data_and0000_inv_YUSED : X_BUF
    generic map(
      LOC => "CLB_R21C28.S1"
    )
    port map (
      I => data_2_Q,
      O => data_2_0
    );
  reg_LINES_4_chX_trigger_jk_t_not00011 : X_LUT4
    generic map(
      INIT => X"CAFA",
      LOC => "CLB_R15C32.S1"
    )
    port map (
      ADR0 => N5,
      ADR1 => N6_0,
      ADR2 => s0_IBUF_0,
      ADR3 => reg_LINES_5_chX_trigger_jk_t_291,
      O => reg_LINES_4_chX_trigger_jk_t_not0001
    );
  reg_LINES_4_chX_trigger_jk_t_not0001_YUSED : X_BUF
    generic map(
      LOC => "CLB_R15C32.S1"
    )
    port map (
      I => reg_LINES_4_chX_trigger_jk_t_not0001,
      O => reg_LINES_4_chX_trigger_jk_t_not0001_0
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

