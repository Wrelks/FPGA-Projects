
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2120.9262default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 16415eae3
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.058 . Memory (MB): peak = 2120.926 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0412default:default2
2120.9262default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?*
ASub-optimal placement for a clock-capable IO pin and PLL pair. %s172*place2?)
?If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_i_IBUF] >

	<MSGMETA::BEGIN::BLOCK>sys_clk_i_IBUF_inst<MSGMETA::END> (IBUF.O) is provisionally placed by clockplacer on IOB_X0Y104
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/plle2_i<MSGMETA::END> (PLLE2_ADV.CLKIN1) is locked to PLLE2_ADV_X1Y1

	The above error could possibly be related to other connected instances. Following is a list of 
	all the related clock rules and their respective instances.

	Clock Rule: rule_mmcm_bufg
	Status: PASS 
	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i<MSGMETA::END> (MMCME2_ADV.CLKFBOUT) is locked to MMCME2_ADV_X1Y1
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufg_clkdiv0<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0

	Clock Rule: rule_bufh_bufr_ramb
	Status: PASS 
	Rule Description: Reginal buffers in the same clock region must drive a total number of brams less
	than the capacity of the region
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3<MSGMETA::END> (BUFH.O) is provisionally placed by clockplacer on BUFHCE_X1Y19

	Clock Rule: rule_bufhce_mmcm
	Status: PASS 
	Rule Description: A BUFH driving an MMCM must both be in the same clock region
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3<MSGMETA::END> (BUFH.O) is provisionally placed by clockplacer on BUFHCE_X1Y19
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i<MSGMETA::END> (MMCME2_ADV.CLKIN1) is locked to MMCME2_ADV_X1Y1

	Clock Rule: rule_pll_bufhce
	Status: PASS 
	Rule Description: A PLL driving a BUFH must both be in the same horizontal row (clockregion-wise)
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/plle2_i<MSGMETA::END> (PLLE2_ADV.CLKOUT3) is locked to PLLE2_ADV_X1Y1
	<MSGMETA::BEGIN::BLOCK>PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3<MSGMETA::END> (BUFH.I) is provisionally placed by clockplacer on BUFHCE_X1Y19

"?
sys_clk_i_IBUF_inst2?If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_i_IBUF] >

	:@ (IBUF.O) is provisionally placed by clockplacer on IOB_X0Y104
	"?
UPmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/plle2_i:? (PLLE2_ADV.CLKIN1) is locked to PLLE2_ADV_X1Y1

	The above error could possibly be related to other connected instances. Following is a list of 
	all the related clock rules and their respective instances.

	Clock Rule: rule_mmcm_bufg
	Status: PASS 
	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
	"?
]PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i:5 (MMCME2_ADV.CLKFBOUT) is locked to MMCME2_ADV_X1Y1
	"?
\PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufg_clkdiv0:? (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0

	Clock Rule: rule_bufh_bufr_ramb
	Status: PASS 
	Rule Description: Reginal buffers in the same clock region must drive a total number of brams less
	than the capacity of the region
	"?
]PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3:? (BUFH.O) is provisionally placed by clockplacer on BUFHCE_X1Y19

	Clock Rule: rule_bufhce_mmcm
	Status: PASS 
	Rule Description: A BUFH driving an MMCM must both be in the same clock region
	"?
]PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3:B (BUFH.O) is provisionally placed by clockplacer on BUFHCE_X1Y19
	"?
]PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i:? (MMCME2_ADV.CLKIN1) is locked to MMCME2_ADV_X1Y1

	Clock Rule: rule_pll_bufhce
	Status: PASS 
	Rule Description: A PLL driving a BUFH must both be in the same horizontal row (clockregion-wise)
	"?
UPmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/plle2_i:2 (PLLE2_ADV.CLKOUT3) is locked to PLLE2_ADV_X1Y1
	"?
]PmodDemo_i/mig_7series_0/u_PmodDemo_mig_7series_0_0_mig/u_ddr3_infrastructure/u_bufh_pll_clk3:B (BUFH.I) is provisionally placed by clockplacer on BUFHCE_X1Y19

2default:default8Z30-172h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 9c824a16
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:09:52 ; elapsed = 00:09:53 . Memory (MB): peak = 2120.926 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: 9c824a16
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:09:52 ; elapsed = 00:09:53 . Memory (MB): peak = 2120.926 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: f8628c58
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:09:52 ; elapsed = 00:09:53 . Memory (MB): peak = 2120.926 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
892default:default2
202default:default2
142default:default2
32default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jul  6 10:21:11 20212default:defaultZ17-206h px? 


End Record