# catboard_yosys
pi@raspberrypi2-146:~ $ git clone https://github.com/develone/catboard_yosys.gitCloning into 'catboard_yosys'...
remote: Counting objects: 11, done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 11 (delta 0), reused 8 (delta 0), pack-reused 0
Unpacking objects: 100% (11/11), done.
Checking connectivity... done.
pi@raspberrypi2-146:~ $ cd catboard_yosys/example1/
pi@raspberrypi2-146:~/catboard_yosys/example1 $ ls
catboard.pcf  catboard.v  led_bin.sh  led_pnr.sh  led.sh
pi@raspberrypi2-146:~/catboard_yosys/example1 $ ./led.sh ; ./led_pnr.sh ; ./led_bin.sh 
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:291)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:305)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:319)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:333)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:347)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:361)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:375)
Warning: Yosys has only limited support for tri-state logic at the moment. (catboard.v:389)
Warning: Identifier `\disp_inst_1_dummy' is implicitly declared at catboard.v:283.
Warning: Identifier `\disp_inst_1_o_drvr' is implicitly declared at catboard.v:288.
Warning: Identifier `\disp_inst_2_dummy' is implicitly declared at catboard.v:297.
Warning: Identifier `\disp_inst_2_o_drvr' is implicitly declared at catboard.v:302.
Warning: Identifier `\disp_inst_3_dummy' is implicitly declared at catboard.v:311.
Warning: Identifier `\disp_inst_3_o_drvr' is implicitly declared at catboard.v:316.
Warning: Identifier `\disp_inst_4_dummy' is implicitly declared at catboard.v:325.
Warning: Identifier `\disp_inst_4_o_drvr' is implicitly declared at catboard.v:330.
Warning: Identifier `\disp_inst_5_dummy' is implicitly declared at catboard.v:339.
Warning: Identifier `\disp_inst_5_o_drvr' is implicitly declared at catboard.v:344.
Warning: Identifier `\disp_inst_6_dummy' is implicitly declared at catboard.v:353.
Warning: Identifier `\disp_inst_6_o_drvr' is implicitly declared at catboard.v:358.
Warning: Identifier `\disp_inst_7_dummy' is implicitly declared at catboard.v:367.
Warning: Identifier `\disp_inst_7_o_drvr' is implicitly declared at catboard.v:372.
Warning: Identifier `\disp_inst_8_dummy' is implicitly declared at catboard.v:381.
Warning: Identifier `\disp_inst_8_o_drvr' is implicitly declared at catboard.v:386.
seed: 1
device: 8k
read_chipdb +/share/arachne-pnr/chipdb-8k.bin...
  supported packages: cb132, cb132:4k, cm121, cm121:4k, cm225, cm225:4k, cm81, cm81:4k, ct256, tq144:4k
read_blif catboard.blif...
prune...
read_pcf catboard.pcf...
instantiate_io...
pack...

After packing:
IOs          9 / 206
GBs          0 / 8
  GB_IOs     0 / 8
LCs          164 / 7680
  DFF        26
  CARRY      6
  CARRY, DFF 60
  DFF PASS   16
  CARRY PASS 3
BRAMs        0 / 32
WARMBOOTs    0 / 1
PLLs         0 / 2

place_constraints...
promote_globals...
  promoted clk_i$2, 86 / 86
  promoted $abc$4677$n3, 16 / 16
  promoted $abc$4677$n5, 13 / 13
  promoted disp_initialized, 14 / 15
  promoted $abc$4677$n52, 8 / 8
  promoted $abc$4677$n48, 7 / 7
  promoted 6 nets
    2 sr/we
    3 cen/wclke
    1 clk
  6 globals
    2 sr/we
    3 cen/wclke
    1 clk
realize_constants...
  realized 1
place...
  initial wire length = 2952
  at iteration #50: temp = 11.7494, wire length = 1891
  at iteration #100: temp = 7.03482, wire length = 1572
  at iteration #150: temp = 2.9414, wire length = 846
  at iteration #200: temp = 1.00173, wire length = 570
  at iteration #250: temp = 0.000850571, wire length = 467
  final wire length = 467

After placement:
PIOs       13 / 206
PLBs       42 / 960
BRAMs      0 / 32

  place time 6.66s
route...
  pass 1, 1 shared.
  pass 2, 1 shared.
  pass 3, 0 shared.

After routing:
span_4     156 / 29696
span_12    34 / 5632

  route time 7.10s
write_txt catboard.txt...
