.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V

* SPICE3 file created from cla.ext - technology: scmos

.option scale=0.09u

M1000 or_0/a_n18_2# g1 vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=18180 ps=8858
M1001 or_0/a_n18_n20# i1 or_0/a_n18_2# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1002 c1 or_0/a_n18_n20# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1003 or_0/a_n18_n20# g1 gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=7355 ps=4256
M1004 gnd i1 or_0/a_n18_n20# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 c1 or_0/a_n18_n20# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1006 and_0/nand_0/out a1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1007 vdd b1 and_0/nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 and_0/nand_0/a_n2_n25# a1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1009 and_0/nand_0/out b1 and_0/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1010 g1 and_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1011 g1 and_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1012 sum1 xor_1/nand_1/out vdd Vdd CMOSP w=20 l=2
+  ad=340 pd=114 as=0 ps=0
M1013 vdd xor_1/nand_2/out sum1 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 xor_1/nand_3/a_n2_n25# xor_1/nand_1/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1015 sum1 xor_1/nand_2/out xor_1/nand_3/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1016 xor_1/nand_2/out xor_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1017 vdd c0 xor_1/nand_2/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 xor_1/nand_2/a_n2_n25# xor_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1019 xor_1/nand_2/out c0 xor_1/nand_2/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1020 xor_1/nand_1/out xor_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1021 vdd p1 xor_1/nand_1/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1022 xor_1/nand_1/a_n2_n25# xor_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1023 xor_1/nand_1/out p1 xor_1/nand_1/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1024 xor_1/nand_0/out p1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1025 vdd c0 xor_1/nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 xor_1/nand_0/a_n2_n25# p1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1027 xor_1/nand_0/out c0 xor_1/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1028 and_1/nand_0/out p1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1029 vdd c0 and_1/nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1030 and_1/nand_0/a_n2_n25# p1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1031 and_1/nand_0/out c0 and_1/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1032 i1 and_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1033 i1 and_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1034 p1 xor_0/nand_1/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1035 vdd xor_0/nand_2/out p1 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1036 xor_0/nand_3/a_n2_n25# xor_0/nand_1/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1037 p1 xor_0/nand_2/out xor_0/nand_3/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1038 xor_0/nand_2/out xor_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1039 vdd b1 xor_0/nand_2/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1040 xor_0/nand_2/a_n2_n25# xor_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1041 xor_0/nand_2/out b1 xor_0/nand_2/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1042 xor_0/nand_1/out xor_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1043 vdd a1 xor_0/nand_1/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1044 xor_0/nand_1/a_n2_n25# xor_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1045 xor_0/nand_1/out a1 xor_0/nand_1/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1046 xor_0/nand_0/out a1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1047 vdd b1 xor_0/nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1048 xor_0/nand_0/a_n2_n25# a1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1049 xor_0/nand_0/out b1 xor_0/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1050 dff_0/a_n92_87# clk ain1 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1051 dff_0/a_n33_38# dff_0/a_n92_87# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1052 dff_0/a_n1_75# clk dff_0/a_n33_38# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1053 a1 dff_0/a_n1_75# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1054 dff_0/a_n33_38# dff_0/a_n92_87# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1055 dff_0/a_n92_87# dff_0/a_n119_11# ain1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1056 dff_0/a_n55_54# clk dff_0/a_n92_87# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1057 a1 dff_0/a_n1_75# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1058 dff_0/a_n55_54# dff_0/a_n119_11# dff_0/a_n92_87# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1059 gnd dff_0/a_n33_38# dff_0/a_n55_54# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 dff_0/a_n1_75# dff_0/a_n119_11# dff_0/a_n33_38# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1061 dff_0/a_36_38# clk dff_0/a_n1_75# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1062 gnd a1 dff_0/a_36_38# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1063 dff_0/a_n119_11# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1064 vdd dff_0/a_n33_38# dff_0/a_n55_54# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 dff_0/a_36_38# dff_0/a_n119_11# dff_0/a_n1_75# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1066 vdd a1 dff_0/a_36_38# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1067 dff_0/a_n119_11# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1068 a_433_n6# clk sum1 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1069 a_492_n55# a_433_n6# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1070 a_524_n18# clk a_492_n55# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1071 sum1out a_524_n18# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1072 a_492_n55# a_433_n6# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1073 a_433_n6# a_406_n82# sum1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1074 a_470_n39# clk a_433_n6# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1075 sum1out a_524_n18# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1076 a_470_n39# a_406_n82# a_433_n6# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1077 gnd a_492_n55# a_470_n39# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1078 a_524_n18# a_406_n82# a_492_n55# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1079 a_561_n55# clk a_524_n18# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1080 gnd sum1out a_561_n55# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1081 a_n221_n103# clk bin1 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1082 a_n162_n152# a_n221_n103# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1083 a_n130_n115# clk a_n162_n152# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1084 b1 a_n130_n115# vdd Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1085 a_406_n82# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1086 vdd a_492_n55# a_470_n39# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1087 a_561_n55# a_406_n82# a_524_n18# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 vdd sum1out a_561_n55# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1089 a_n162_n152# a_n221_n103# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1090 a_406_n82# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1091 a_n221_n103# a_n248_n179# bin1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1092 a_n184_n136# clk a_n221_n103# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1093 b1 a_n130_n115# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 a_n184_n136# a_n248_n179# a_n221_n103# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1095 gnd a_n162_n152# a_n184_n136# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1096 a_n130_n115# a_n248_n179# a_n162_n152# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1097 a_n93_n152# clk a_n130_n115# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1098 gnd b1 a_n93_n152# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1099 a_n248_n179# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 vdd a_n162_n152# a_n184_n136# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1101 a_n93_n152# a_n248_n179# a_n130_n115# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 vdd b1 a_n93_n152# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 a_n248_n179# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1104 a_n222_n249# clk ain2 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1105 a_n163_n298# a_n222_n249# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1106 a_n131_n261# clk a_n163_n298# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1107 a2 a_n131_n261# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1108 a_n163_n298# a_n222_n249# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 a_n1_n228# a2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1110 vdd b2 a_n1_n228# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 a_38_n219# a_n1_n228# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1112 vdd a2 a_38_n219# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1113 a_n222_n249# a_n249_n325# ain2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1114 a_n185_n282# clk a_n222_n249# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1115 a2 a_n131_n261# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1116 a_n185_n282# a_n249_n325# a_n222_n249# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1117 gnd a_n163_n298# a_n185_n282# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1118 a_n131_n261# a_n249_n325# a_n163_n298# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1119 a_156_n221# p2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1120 vdd c1 a_156_n221# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 a_195_n212# a_156_n221# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1122 vdd p2 a_195_n212# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1123 a_n1_n253# a2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1124 a_n1_n228# b2 a_n1_n253# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1125 a_38_n244# a_n1_n228# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1126 a_38_n219# a2 a_38_n244# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1127 p2 a_38_n219# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1128 vdd a_38_n288# p2 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 a_n94_n298# clk a_n131_n261# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1130 gnd a2 a_n94_n298# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1131 a_156_n246# p2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1132 a_156_n221# c1 a_156_n246# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1133 a_195_n237# a_156_n221# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1134 a_195_n212# p2 a_195_n237# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1135 sum2 a_195_n212# vdd Vdd CMOSP w=20 l=2
+  ad=340 pd=114 as=0 ps=0
M1136 vdd a_195_n281# sum2 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1137 a_433_n266# clk sum2 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1138 a_492_n315# a_433_n266# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1139 a_524_n278# clk a_492_n315# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1140 sum2out a_524_n278# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1141 a_n249_n325# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1142 vdd a_n163_n298# a_n185_n282# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 a_78_n267# a_38_n219# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1144 p2 a_38_n288# a_78_n267# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1145 a_235_n260# a_195_n212# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1146 sum2 a_195_n281# a_235_n260# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1147 a_492_n315# a_433_n266# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1148 a_n94_n298# a_n249_n325# a_n131_n261# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 vdd a2 a_n94_n298# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1150 a_38_n288# a_n1_n228# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1151 vdd b2 a_38_n288# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1152 a_195_n281# a_156_n221# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1153 vdd c1 a_195_n281# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 a_433_n266# a_406_n342# sum2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1155 a_470_n299# clk a_433_n266# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1156 sum2out a_524_n278# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1157 a_38_n313# a_n1_n228# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1158 a_38_n288# b2 a_38_n313# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1159 a_195_n306# a_156_n221# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1160 a_195_n281# c1 a_195_n306# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1161 a_470_n299# a_406_n342# a_433_n266# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1162 gnd a_492_n315# a_470_n299# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1163 a_524_n278# a_406_n342# a_492_n315# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1164 a_561_n315# clk a_524_n278# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1165 gnd sum2out a_561_n315# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1166 a_n249_n325# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1167 a_406_n342# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1168 vdd a_492_n315# a_470_n299# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1169 a_561_n315# a_406_n342# a_524_n278# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 vdd sum2out a_561_n315# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1171 a_n222_n390# clk bin2 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1172 a_n163_n439# a_n222_n390# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1173 a_n131_n402# clk a_n163_n439# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1174 b2 a_n131_n402# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1175 a_31_n354# a2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1176 vdd b2 a_31_n354# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1177 g2 a_31_n354# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1178 a_406_n342# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1179 a_n163_n439# a_n222_n390# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1180 a_n222_n390# a_n249_n466# bin2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1181 a_n185_n423# clk a_n222_n390# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1182 b2 a_n131_n402# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1183 a_31_n379# a2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1184 a_31_n354# b2 a_31_n379# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1185 g2 a_31_n354# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1186 a_147_n378# p2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1187 vdd g1 a_147_n378# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1188 a_181_n403# a_147_n378# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1189 a_n185_n423# a_n249_n466# a_n222_n390# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1190 gnd a_n163_n439# a_n185_n423# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1191 a_n131_n402# a_n249_n466# a_n163_n439# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1192 a_221_n383# a_181_n403# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1193 a_221_n405# g2 a_221_n383# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1194 c2 a_221_n405# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1195 a_n94_n439# clk a_n131_n402# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1196 gnd b2 a_n94_n439# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1197 a_147_n403# p2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1198 a_147_n378# g1 a_147_n403# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1199 a_181_n403# a_147_n378# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1200 a_n249_n466# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1201 vdd a_n163_n439# a_n185_n423# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 a_221_n405# a_181_n403# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1203 gnd g2 a_221_n405# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1204 c2 a_221_n405# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1205 a_n94_n439# a_n249_n466# a_n131_n402# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1206 vdd b2 a_n94_n439# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1207 a_n249_n466# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1208 a_n223_n533# clk ain3 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1209 a_n164_n582# a_n223_n533# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1210 a_n132_n545# clk a_n164_n582# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1211 a3 a_n132_n545# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1212 a_n164_n582# a_n223_n533# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 a_5_n513# a3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1214 vdd b3 a_5_n513# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1215 a_44_n504# a_5_n513# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1216 vdd a3 a_44_n504# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1217 a_n223_n533# a_n250_n609# ain3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1218 a_n186_n566# clk a_n223_n533# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1219 a3 a_n132_n545# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1220 a_n186_n566# a_n250_n609# a_n223_n533# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1221 gnd a_n164_n582# a_n186_n566# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1222 a_n132_n545# a_n250_n609# a_n164_n582# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1223 a_162_n506# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1224 vdd c2 a_162_n506# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1225 a_201_n497# a_162_n506# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1226 vdd p3 a_201_n497# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1227 a_n95_n582# clk a_n132_n545# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1228 a_5_n538# a3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1229 a_5_n513# b3 a_5_n538# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 a_44_n529# a_5_n513# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1231 a_44_n504# a3 a_44_n529# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1232 p3 a_44_n504# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1233 vdd a_44_n573# p3 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1234 gnd a3 a_n95_n582# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1235 a_162_n531# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1236 a_162_n506# c2 a_162_n531# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1237 a_201_n522# a_162_n506# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1238 a_201_n497# p3 a_201_n522# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1239 sum3 a_201_n497# vdd Vdd CMOSP w=20 l=2
+  ad=340 pd=114 as=0 ps=0
M1240 vdd a_201_n566# sum3 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1241 a_433_n550# clk sum3 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1242 a_492_n599# a_433_n550# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1243 a_524_n562# clk a_492_n599# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1244 sum3out a_524_n562# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1245 a_n250_n609# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1246 vdd a_n164_n582# a_n186_n566# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1247 a_84_n552# a_44_n504# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1248 p3 a_44_n573# a_84_n552# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1249 a_241_n545# a_201_n497# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1250 sum3 a_201_n566# a_241_n545# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1251 a_492_n599# a_433_n550# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1252 a_n95_n582# a_n250_n609# a_n132_n545# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1253 vdd a3 a_n95_n582# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 a_44_n573# a_5_n513# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1255 vdd b3 a_44_n573# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 a_201_n566# a_162_n506# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1257 vdd c2 a_201_n566# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1258 a_433_n550# a_406_n626# sum3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1259 a_470_n583# clk a_433_n550# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1260 sum3out a_524_n562# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1261 a_44_n598# a_5_n513# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1262 a_44_n573# b3 a_44_n598# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1263 a_201_n591# a_162_n506# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1264 a_201_n566# c2 a_201_n591# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1265 a_470_n583# a_406_n626# a_433_n550# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1266 gnd a_492_n599# a_470_n583# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 a_524_n562# a_406_n626# a_492_n599# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1268 a_561_n599# clk a_524_n562# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1269 gnd sum3out a_561_n599# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1270 a_n250_n609# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1271 a_406_n626# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1272 vdd a_492_n599# a_470_n583# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1273 a_561_n599# a_406_n626# a_524_n562# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1274 vdd sum3out a_561_n599# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1275 a_n223_n674# clk bin3 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1276 a_n164_n723# a_n223_n674# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1277 a_n132_n686# clk a_n164_n723# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1278 b3 a_n132_n686# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1279 a_37_n639# a3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1280 vdd b3 a_37_n639# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1281 g3 a_37_n639# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1282 a_406_n626# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1283 a_n164_n723# a_n223_n674# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1284 a_n223_n674# a_n250_n750# bin3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1285 a_n186_n707# clk a_n223_n674# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1286 b3 a_n132_n686# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1287 a_37_n664# a3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1288 a_37_n639# b3 a_37_n664# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1289 g3 a_37_n639# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1290 a_153_n663# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1291 vdd g2 a_153_n663# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 a_187_n688# a_153_n663# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1293 a_226_n663# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1294 vdd a_181_n403# a_226_n663# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1295 a_159_n1149# a_226_n663# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1296 a_n186_n707# a_n250_n750# a_n223_n674# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1297 gnd a_n164_n723# a_n186_n707# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1298 a_n132_n686# a_n250_n750# a_n164_n723# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1299 a_297_n668# a_159_n1149# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1300 a_297_n690# a_187_n688# a_297_n668# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1301 a_244_n719# a_297_n690# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1302 a_n95_n723# clk a_n132_n686# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1303 gnd b3 a_n95_n723# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1304 a_153_n688# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1305 a_153_n663# g2 a_153_n688# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1306 a_187_n688# a_153_n663# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1307 a_226_n688# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1308 a_226_n663# a_181_n403# a_226_n688# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1309 a_159_n1149# a_226_n663# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1310 a_n250_n750# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1311 vdd a_n164_n723# a_n186_n707# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1312 a_297_n690# a_159_n1149# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1313 gnd a_187_n688# a_297_n690# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1314 a_244_n719# a_297_n690# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1315 a_n95_n723# a_n250_n750# a_n132_n686# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1316 vdd b3 a_n95_n723# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1317 a_n250_n750# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1318 a_250_n749# a_244_n719# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1319 a_250_n771# g3 a_250_n749# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1320 c3 a_250_n771# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1321 a_n223_n822# clk ain4 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1322 a_n164_n871# a_n223_n822# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1323 a_250_n771# a_244_n719# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1324 gnd g3 a_250_n771# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1325 c3 a_250_n771# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1326 a_n132_n834# clk a_n164_n871# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1327 a4 a_n132_n834# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1328 a_n164_n871# a_n223_n822# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1329 a_433_n819# clk sum4 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=340 ps=114
M1330 a_492_n868# a_433_n819# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1331 a_524_n831# clk a_492_n868# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1332 sum4out a_524_n831# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1333 a_n223_n822# a_n250_n898# ain4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1334 a_n186_n855# clk a_n223_n822# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1335 a4 a_n132_n834# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1336 a_492_n868# a_433_n819# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1337 a_n186_n855# a_n250_n898# a_n223_n822# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1338 gnd a_n164_n871# a_n186_n855# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1339 a_n132_n834# a_n250_n898# a_n164_n871# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1340 a_433_n819# a_406_n895# sum4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1341 a_470_n852# clk a_433_n819# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1342 sum4out a_524_n831# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1343 a_n95_n871# clk a_n132_n834# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1344 gnd a4 a_n95_n871# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1345 a_n250_n898# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1346 vdd a_n164_n871# a_n186_n855# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1347 a_n95_n871# a_n250_n898# a_n132_n834# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1348 vdd a4 a_n95_n871# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1349 a_470_n852# a_406_n895# a_433_n819# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1350 gnd a_492_n868# a_470_n852# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1351 a_524_n831# a_406_n895# a_492_n868# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1352 a_561_n868# clk a_524_n831# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1353 gnd sum4out a_561_n868# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1354 a_n250_n898# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1355 a_5_n893# a4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1356 vdd b4 a_5_n893# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1357 a_44_n884# a_5_n893# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1358 vdd a4 a_44_n884# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1359 a_162_n886# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1360 vdd c3 a_162_n886# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1361 a_201_n877# a_162_n886# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1362 vdd p4 a_201_n877# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1363 a_406_n895# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1364 vdd a_492_n868# a_470_n852# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1365 a_561_n868# a_406_n895# a_524_n831# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1366 vdd sum4out a_561_n868# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1367 a_n223_n963# clk bin4 Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1368 a_n164_n1012# a_n223_n963# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1369 a_n132_n975# clk a_n164_n1012# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1370 b4 a_n132_n975# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1371 a_5_n918# a4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1372 a_5_n893# b4 a_5_n918# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1373 a_44_n909# a_5_n893# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1374 a_44_n884# a4 a_44_n909# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1375 p4 a_44_n884# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1376 vdd a_44_n953# p4 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1377 a_162_n911# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1378 a_162_n886# c3 a_162_n911# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1379 a_201_n902# a_162_n886# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1380 a_201_n877# p4 a_201_n902# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1381 sum4 a_201_n877# vdd Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1382 vdd a_201_n946# sum4 Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1383 a_406_n895# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1384 a_84_n932# a_44_n884# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1385 p4 a_44_n953# a_84_n932# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1386 a_241_n925# a_201_n877# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1387 sum4 a_201_n946# a_241_n925# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1388 a_n164_n1012# a_n223_n963# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1389 a_n223_n963# a_n250_n1039# bin4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1390 a_n186_n996# clk a_n223_n963# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1391 b4 a_n132_n975# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1392 a_44_n953# a_5_n893# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1393 vdd b4 a_44_n953# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1394 a_201_n946# a_162_n886# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1395 vdd c3 a_201_n946# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1396 a_n186_n996# a_n250_n1039# a_n223_n963# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1397 gnd a_n164_n1012# a_n186_n996# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1398 a_n132_n975# a_n250_n1039# a_n164_n1012# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1399 a_n95_n1012# clk a_n132_n975# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1400 gnd b4 a_n95_n1012# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1401 a_44_n978# a_5_n893# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1402 a_44_n953# b4 a_44_n978# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1403 a_201_n971# a_162_n886# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1404 a_201_n946# c3 a_201_n971# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1405 a_n250_n1039# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1406 vdd a_n164_n1012# a_n186_n996# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1407 a_n95_n1012# a_n250_n1039# a_n132_n975# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1408 vdd b4 a_n95_n1012# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1409 a_37_n1019# a4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1410 vdd b4 a_37_n1019# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1411 g4 a_37_n1019# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1412 a_433_n1038# clk cout Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1413 a_492_n1087# a_433_n1038# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1414 a_n250_n1039# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1415 a_37_n1044# a4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1416 a_37_n1019# b4 a_37_n1044# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1417 g4 a_37_n1019# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1418 a_153_n1043# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1419 vdd g3 a_153_n1043# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1420 a_187_n1068# a_153_n1043# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1421 a_226_n1043# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1422 vdd a_187_n688# a_226_n1043# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1423 a_260_n1068# a_226_n1043# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1424 a_524_n1050# clk a_492_n1087# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1425 cout_out a_524_n1050# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1426 a_492_n1087# a_433_n1038# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1427 a_298_n1048# a_260_n1068# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1428 a_298_n1070# a_187_n1068# a_298_n1048# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1429 a_222_n1150# a_298_n1070# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1430 a_433_n1038# a_406_n1114# cout Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1431 a_470_n1071# clk a_433_n1038# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1432 cout_out a_524_n1050# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1433 a_153_n1068# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1434 a_153_n1043# g3 a_153_n1068# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1435 a_187_n1068# a_153_n1043# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1436 a_226_n1068# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1437 a_226_n1043# a_187_n688# a_226_n1068# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1438 a_260_n1068# a_226_n1043# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1439 a_298_n1070# a_260_n1068# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1440 gnd a_187_n1068# a_298_n1070# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1441 a_222_n1150# a_298_n1070# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1442 a_470_n1071# a_406_n1114# a_433_n1038# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1443 gnd a_492_n1087# a_470_n1071# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1444 a_524_n1050# a_406_n1114# a_492_n1087# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1445 a_561_n1087# clk a_524_n1050# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1446 gnd cout_out a_561_n1087# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1447 a_406_n1114# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1448 vdd a_492_n1087# a_470_n1071# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1449 a_561_n1087# a_406_n1114# a_524_n1050# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1450 vdd cout_out a_561_n1087# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1451 a_151_n1135# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1452 vdd a_159_n1149# a_151_n1135# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1453 a_185_n1160# a_151_n1135# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1454 a_217_n1140# a_185_n1160# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1455 a_217_n1162# a_222_n1150# a_217_n1140# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1456 a_242_n1162# a_217_n1162# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1457 a_406_n1114# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1458 a_151_n1160# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1459 a_151_n1135# a_159_n1149# a_151_n1160# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1460 a_185_n1160# a_151_n1135# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1461 a_267_n1147# a_242_n1162# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1462 a_267_n1169# g4 a_267_n1147# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1463 cout a_267_n1169# vdd Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1464 a_217_n1162# a_185_n1160# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1465 gnd a_222_n1150# a_217_n1162# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1466 a_242_n1162# a_217_n1162# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1467 a_267_n1169# a_242_n1162# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1468 gnd g4 a_267_n1169# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1469 cout a_267_n1169# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
C0 vdd a_5_n513# 0.6fF
C1 a4 b4 1.8fF
C2 a4 gnd 0.9fF
C3 b3 gnd 0.7fF
C4 p4 gnd 1.1fF
C5 a1 b1 1.7fF
C6 a_187_n688# g2 1.0fF
C7 a1 gnd 0.5fF
C8 a3 gnd 0.7fF
C9 vdd a_187_n688# 0.7fF
C10 a2 b2 1.8fF
C11 b2 gnd 0.7fF
C12 vdd p2 0.5fF
C13 g3 a_187_n1068# 1.1fF
C14 vdd p3 0.5fF
C15 a3 b3 1.8fF
C16 a_147_n378# g1 0.6fF
C17 vdd a_162_n886# 0.6fF
C18 vdd a_162_n506# 0.6fF
C19 g4 a_222_n1150# 0.6fF
C20 p3 gnd 1.0fF
C21 clk g1 1.8fF
C22 vdd a_n1_n228# 0.6fF
C23 vdd a_5_n893# 0.6fF
C24 g3 a_244_n719# 0.7fF
C25 a_156_n221# vdd 0.6fF
C26 vdd a_159_n1149# 0.9fF
C27 vdd a_242_n1162# 0.6fF
C28 a_159_n1149# a_151_n1135# 0.6fF
C29 a_153_n663# g2 0.6fF
C30 vdd clk 1.6fF
C31 a2 gnd 0.7fF
C32 b4 gnd 0.9fF
C33 a_153_n1043# g3 0.6fF
C34 vdd p4 0.9fF
C35 a_187_n688# a_226_n1043# 0.6fF
C36 a_226_n663# a_181_n403# 0.6fF
C37 a_222_n1150# gnd 0.9fF
C38 a_406_n1114# gnd 1.5fF
C39 a_187_n1068# gnd 0.8fF
C40 a_524_n1050# gnd 0.8fF
C41 a_492_n1087# gnd 0.6fF
C42 cout gnd 3.1fF
C43 g4 gnd 1.9fF
C44 a_433_n1038# gnd 0.8fF
C45 a_n250_n1039# gnd 1.5fF
C46 a_n132_n975# gnd 0.8fF
C47 a_n164_n1012# gnd 0.6fF
C48 bin4 gnd 0.8fF
C49 a_n223_n963# gnd 0.8fF
C50 p4 gnd 2.7fF
C51 b4 gnd 3.2fF
C52 a_5_n893# gnd 0.8fF
C53 a_162_n886# gnd 0.8fF
C54 a_406_n895# gnd 1.5fF
C55 a_524_n831# gnd 0.8fF
C56 a_492_n868# gnd 0.6fF
C57 sum4 gnd 2.9fF
C58 a_n250_n898# gnd 1.5fF
C59 a4 gnd 2.6fF
C60 a_433_n819# gnd 0.8fF
C61 a_n132_n834# gnd 0.8fF
C62 a_n164_n871# gnd 0.6fF
C63 ain4 gnd 0.8fF
C64 a_n223_n822# gnd 0.8fF
C65 c3 gnd 2.2fF
C66 a_244_n719# gnd 0.7fF
C67 a_187_n688# gnd 5.1fF
C68 a_n250_n750# gnd 1.5fF
C69 a_159_n1149# gnd 6.4fF
C70 g3 gnd 3.6fF
C71 a_n132_n686# gnd 0.8fF
C72 a_n164_n723# gnd 0.6fF
C73 bin3 gnd 0.8fF
C74 a_n223_n674# gnd 0.8fF
C75 a_406_n626# gnd 1.5fF
C76 b3 gnd 2.7fF
C77 a_524_n562# gnd 0.8fF
C78 a_492_n599# gnd 0.6fF
C79 sum3 gnd 1.9fF
C80 a_433_n550# gnd 0.8fF
C81 p3 gnd 2.0fF
C82 a_n250_n609# gnd 1.5fF
C83 a3 gnd 2.1fF
C84 a_5_n513# gnd 0.8fF
C85 a_n132_n545# gnd 0.8fF
C86 a_n164_n582# gnd 0.6fF
C87 ain3 gnd 0.8fF
C88 a_n223_n533# gnd 0.8fF
C89 a_162_n506# gnd 0.8fF
C90 c2 gnd 2.3fF
C91 a_n249_n466# gnd 1.5fF
C92 a_181_n403# gnd 3.8fF
C93 g2 gnd 3.4fF
C94 a_n131_n402# gnd 0.8fF
C95 a_n163_n439# gnd 0.6fF
C96 bin2 gnd 0.8fF
C97 a_n222_n390# gnd 0.8fF
C98 a_406_n342# gnd 1.5fF
C99 b2 gnd 2.7fF
C100 a_524_n278# gnd 0.8fF
C101 a_492_n315# gnd 0.6fF
C102 sum2 gnd 2.0fF
C103 a_433_n266# gnd 0.8fF
C104 p2 gnd 1.4fF
C105 a_n249_n325# gnd 1.5fF
C106 a2 gnd 2.0fF
C107 a_n1_n228# gnd 0.8fF
C108 a_n131_n261# gnd 0.8fF
C109 a_n163_n298# gnd 0.6fF
C110 ain2 gnd 0.8fF
C111 a_n222_n249# gnd 0.8fF
C112 a_156_n221# gnd 0.8fF
C113 a_n248_n179# gnd 1.5fF
C114 a_n130_n115# gnd 0.8fF
C115 a_n162_n152# gnd 0.6fF
C116 bin1 gnd 0.8fF
C117 a_n221_n103# gnd 0.8fF
C118 a_406_n82# gnd 1.5fF
C119 a_524_n18# gnd 0.8fF
C120 a_492_n55# gnd 0.6fF
C121 a_433_n6# gnd 0.8fF
C122 clk gnd 56.5fF
C123 dff_0/a_n119_11# gnd 1.5fF
C124 dff_0/a_n1_75# gnd 0.8fF
C125 dff_0/a_n33_38# gnd 0.6fF
C126 ain1 gnd 0.8fF
C127 dff_0/a_n92_87# gnd 0.8fF
C128 a1 gnd 1.6fF
C129 b1 gnd 1.9fF
C130 xor_0/nand_0/out gnd 0.8fF
C131 xor_0/nand_2/out gnd 0.5fF
C132 i1 gnd 0.8fF
C133 c0 gnd 2.3fF
C134 vdd gnd 14.6fF
C135 p1 gnd 1.4fF
C136 xor_1/nand_0/out gnd 0.8fF
C137 gnd gnd 9.1fF
C138 sum1 gnd 1.9fF
C139 xor_1/nand_2/out gnd 0.5fF
C140 c1 gnd 2.8fF
C141 g1 gnd 9.4fF



Vc0 c0 gnd 0V

* Va1 ain1 gnd pwl(0ns 1.8V 2ns 1.8 2ns 0V 6ns 0V)
* Va2 ain2 gnd pwl(0ns 0V 2ns 0 2ns 1.8V 4ns 1.8V 4ns 0V 6ns 0V)
* Va3 ain3 gnd pwl(0ns 0V  4ns 0V  4ns 1.8V 6ns 1.8V)
* Va4 ain4 gnd 0V
* Vb1 bin1 gnd 0V
* Vb2 bin2 gnd 1.8V
* Vb3 bin3 gnd 0V
* Vb4 bin4 gnd 1.8V
 
Vda1 ain1 gnd 1.8V
Vda2 ain2 gnd  0V
Vda3 ain3 gnd 1.8V
Vda4 ain4 gnd  0V

Vdb1 bin1 gnd 1.8V
Vdb2 bin2 gnd 1.8V
Vdb3 bin3 gnd 1.8V
Vdb4 bin4 gnd 0V

Vclk clk gnd pulse 1.8 0 0ns 0ns 0ns 5ns 10ns

*  1010 + 0001 = 1011
*  1010 + 0010 = 1100
*  1010 + 0100 = 1110

.tran 20ps 45ns
.control
set hcopypscolor = 1 *White background for saving plots
    set color0 = White
    set color1 = black
    set color2 = blue
    set color3 = red
    set color4 = green
    set color5 = magenta
    set color6 = purple
    run  
    set curplottitle="shaantanu kulkarni  2019102031"
    * plot V(a1) V(ain1) 
    * plot V(a2) V(ain2) 
    * plot V(a3) V(ain3) 
    * plot V(a4) V(ain4) 
    * plot V(b1) V(bin1) 
    * plot V(b2) V(bin2) 
    * plot V(b3) V(bin3) 
    * plot V(b4) V(bin4) 
    plot V(sum1) V(sum1out)
    plot V(sum2) V(sum2out)
    plot V(sum3) V(sum3out)
    plot V(sum4) V(sum4out)
    * plot V(clk)
  

    
  
   