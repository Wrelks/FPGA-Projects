-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Jul  3 05:35:55 2021
-- Host        : DESKTOP-OI7JC87 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Wrelks/FPGA/artyA7-100T-Breadboard
--               breakout/artyA7-100T-Breadboard
--               breakout.gen/sources_1/bd/pmodHookup/ip/pmodHookup_reset_inv_0_1/pmodHookup_reset_inv_0_1_sim_netlist.vhdl}
-- Design      : pmodHookup_reset_inv_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pmodHookup_reset_inv_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pmodHookup_reset_inv_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pmodHookup_reset_inv_0_1 : entity is "pmodHookup_reset_inv_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pmodHookup_reset_inv_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pmodHookup_reset_inv_0_1 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
end pmodHookup_reset_inv_0_1;

architecture STRUCTURE of pmodHookup_reset_inv_0_1 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
