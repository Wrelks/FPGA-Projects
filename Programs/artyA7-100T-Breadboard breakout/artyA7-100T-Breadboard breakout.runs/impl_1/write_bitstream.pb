
g
Command: %s
1870*	planAhead22
open_checkpoint top_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.076 . Memory (MB): peak = 1017.363 ; gain = 0.0002default:defaulth px? 
?
?The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board29
%digilentinc.com:arty-a7-100:part0:1.02default:defaultZ49-67h px? 
?
?The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board29
%digilentinc.com:arty-a7-100:part0:1.02default:defaultZ49-67h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0332default:default2
1017.3632default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3552default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
top2default:default2
top2default:defaultZ29-101h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2 
00:00:00.5622default:default2
1282.7302default:default2
8.1912default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.5642default:default2
1282.7302default:default2
8.1912default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1282.7302default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2020.2 (64-bit)2default:default2
30647662default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:242default:default2
00:00:272default:default2
1282.7302default:default2
265.3672default:defaultZ17-268h px? 
c
Command: %s
53*	vivadotcl22
write_bitstream -force top.bit2default:defaultZ4-113h px? 
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
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2>
 "(
outWire0	outWire02default:default2default:default2H
 "2
outWire0/A[29:0]
outWire0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2>
 "(
outWire0	outWire02default:default2default:default2H
 "2
outWire0/B[17:0]
outWire0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2D
 ".
outWire0__0	outWire0__02default:default2default:default2N
 "8
outWire0__0/A[29:0]outWire0__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2D
 ".
outWire0__0	outWire0__02default:default2default:default2N
 "8
outWire0__0/B[17:0]outWire0__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2>
 "(
outWire0	outWire02default:default2default:default2H
 "2
outWire0/P[47:0]
outWire0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2D
 ".
outWire0__0	outWire0__02default:default2default:default2N
 "8
outWire0__0/P[47:0]outWire0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2>
 "(
outWire0	outWire02default:default2default:default2H
 "2
outWire0/P[47:0]
outWire0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2D
 ".
outWire0__0	outWire0__02default:default2default:default2N
 "8
outWire0__0/P[47:0]outWire0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[10]dip[10]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[11]dip[11]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[12]dip[12]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[13]dip[13]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[14]dip[14]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2<
 "&
dip[15]dip[15]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"B
memory[13][7]_i_1_n_0memory[13][7]_i_1_n_02default:default"D
memory[123][7]_i_1_n_0memory[123][7]_i_1_n_02default:default"D
memory[131][7]_i_1_n_0memory[131][7]_i_1_n_02default:default"D
memory[133][7]_i_1_n_0memory[133][7]_i_1_n_02default:default"D
memory[125][7]_i_1_n_0memory[125][7]_i_1_n_02default:default"D
memory[137][7]_i_1_n_0memory[137][7]_i_1_n_02default:default"D
memory[115][7]_i_1_n_0memory[115][7]_i_1_n_02default:default"D
memory[139][7]_i_1_n_0memory[139][7]_i_1_n_02default:default"@
memory[129][7]_i_1_n_0memory[129][7]_i_1_n_02default:..."0
(the first 15 of 128 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2:
 "$
dip[8]dip[8]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
?
?IOB set reset sharing: IO %s connects to flops which have these %s set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.%s*DRC2:
 "$
dip[9]dip[9]2default:default2default:default2?
 "D
memory[101][7]_i_1_n_0memory[101][7]_i_1_n_02default:default"D
memory[100][6]_i_1_n_0memory[100][6]_i_1_n_02default:default"@
memory[0][6]_i_1_n_0memory[0][6]_i_1_n_02default:default"D
memory[105][7]_i_1_n_0memory[105][7]_i_1_n_02default:default"D
memory[109][7]_i_1_n_0memory[109][7]_i_1_n_02default:default"B
memory[10][6]_i_1_n_0memory[10][6]_i_1_n_02default:default"D
memory[110][6]_i_1_n_0memory[110][6]_i_1_n_02default:default"D
memory[111][7]_i_1_n_0memory[111][7]_i_1_n_02default:default"D
memory[112][6]_i_1_n_0memory[112][6]_i_1_n_02default:default"D
memory[103][7]_i_1_n_0memory[103][7]_i_1_n_02default:default"D
memory[104][6]_i_1_n_0memory[104][6]_i_1_n_02default:default"D
memory[106][6]_i_1_n_0memory[106][6]_i_1_n_02default:default"D
memory[107][7]_i_1_n_0memory[107][7]_i_1_n_02default:default"D
memory[108][6]_i_1_n_0memory[108][6]_i_1_n_02default:default"@
memory[102][6]_i_1_n_0memory[102][6]_i_1_n_02default:..."0
(the first 15 of 256 listed)2default:default2default:default29
 !DRC|Implementation|Placement|Port2default:default8ZIOSR-1h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 17 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
Z
Writing bitstream %s...
11*	bitstream2
	./top.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
182default:default2
22default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:302default:default2
00:00:252default:default2
1812.7032default:default2
529.9732default:defaultZ17-268h px? 


End Record