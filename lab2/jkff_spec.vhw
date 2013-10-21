--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : jkff_spec.vhw
-- /___/   /\     Timestamp : Mon Oct 21 02:27:25 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: jkff_spec
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY jkff_spec IS
END jkff_spec;

ARCHITECTURE testbench_arch OF jkff_spec IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT jkff
        PORT (
            clk : In std_logic;
            J : In std_logic;
            K : In std_logic;
            invR : In std_logic;
            invS : In std_logic;
            Q : Out std_logic;
            invQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '0';
    SIGNAL J : std_logic := '1';
    SIGNAL K : std_logic := '1';
    SIGNAL invR : std_logic := '0';
    SIGNAL invS : std_logic := '0';
    SIGNAL Q : std_logic := '0';
    SIGNAL invQ : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : jkff
        PORT MAP (
            clk => clk,
            J => J,
            K => K,
            invR => invR,
            invS => invS,
            Q => Q,
            invQ => invQ
        );

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS    -- Process for clk
            BEGIN
                -- -------------  Current Time:  1085ns
                WAIT FOR 1085 ns;
                J <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                J <= '1';
                K <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                K <= '1';
                -- -------------------------------------
                WAIT FOR 715 ns;

            END PROCESS;

            PROCESS    -- Process for Asynchronous Signals
                BEGIN
                    -- -------------  Current Time:  10ns
                    WAIT FOR 10 ns;
                    invS <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  23ns
                    WAIT FOR 12 ns;
                    invR <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  148ns
                    WAIT FOR 125 ns;
                    invR <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  352ns
                    WAIT FOR 204 ns;
                    invR <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  846ns
                    WAIT FOR 493 ns;
                    invS <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  1026ns
                    WAIT FOR 180 ns;
                    invS <= '1';
                    -- -------------------------------------
                    WAIT FOR 1173 ns;

                END PROCESS;

        END testbench_arch;

