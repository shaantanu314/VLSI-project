.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V

M1000 or_0/a_n18_2# g1 vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-322648 ps=5608
M1001 or_0/a_n18_n20# i1 or_0/a_n18_2# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1002 c1 or_0/a_n18_n20# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1003 or_0/a_n18_n20# g1 gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-106674 ps=2292
M1004 gnd i1 or_0/a_n18_n20# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1005 c1 or_0/a_n18_n20# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1006 and_0/nand_0/out a1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1007 vdd b1 and_0/nand_0/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1008 and_0/nand_0/a_n2_n25# a1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1009 and_0/nand_0/out b1 and_0/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1010 g1 and_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1011 g1 and_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1012 sum1 xor_1/nand_1/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1013 vdd xor_1/nand_2/out sum1 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1014 xor_1/nand_3/a_n2_n25# xor_1/nand_1/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1015 sum1 xor_1/nand_2/out xor_1/nand_3/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1016 xor_1/nand_2/out xor_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1017 vdd c0 xor_1/nand_2/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1018 xor_1/nand_2/a_n2_n25# xor_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1019 xor_1/nand_2/out c0 xor_1/nand_2/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1020 xor_1/nand_1/out xor_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1021 vdd p1 xor_1/nand_1/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1022 xor_1/nand_1/a_n2_n25# xor_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1023 xor_1/nand_1/out p1 xor_1/nand_1/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1024 xor_1/nand_0/out p1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1025 vdd c0 xor_1/nand_0/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1026 xor_1/nand_0/a_n2_n25# p1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1027 xor_1/nand_0/out c0 xor_1/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1028 and_1/nand_0/out p1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1029 vdd c0 and_1/nand_0/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1030 and_1/nand_0/a_n2_n25# p1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1031 and_1/nand_0/out c0 and_1/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1032 i1 and_1/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1033 i1 and_1/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1034 p1 xor_0/nand_1/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1035 vdd xor_0/nand_2/out p1 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1036 xor_0/nand_3/a_n2_n25# xor_0/nand_1/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1037 p1 xor_0/nand_2/out xor_0/nand_3/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1038 xor_0/nand_2/out xor_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1039 vdd b1 xor_0/nand_2/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1040 xor_0/nand_2/a_n2_n25# xor_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1041 xor_0/nand_2/out b1 xor_0/nand_2/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1042 xor_0/nand_1/out xor_0/nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1043 vdd a1 xor_0/nand_1/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1044 xor_0/nand_1/a_n2_n25# xor_0/nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1045 xor_0/nand_1/out a1 xor_0/nand_1/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1046 xor_0/nand_0/out a1 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1047 vdd b1 xor_0/nand_0/out Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1048 xor_0/nand_0/a_n2_n25# a1 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1049 xor_0/nand_0/out b1 xor_0/nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1050 a_n1_n228# a2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1051 vdd b2 a_n1_n228# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1052 a_38_n219# a_n1_n228# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1053 vdd a2 a_38_n219# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1054 a_156_n221# p2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1055 vdd c1 a_156_n221# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1056 a_195_n212# a_156_n221# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1057 vdd p2 a_195_n212# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1058 a_n1_n253# a2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1059 a_n1_n228# b2 a_n1_n253# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1060 a_38_n244# a_n1_n228# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1061 a_38_n219# a2 a_38_n244# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1062 p2 a_38_n219# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1063 vdd a_38_n288# p2 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1064 a_156_n246# p2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1065 a_156_n221# c1 a_156_n246# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1066 a_195_n237# a_156_n221# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1067 a_195_n212# p2 a_195_n237# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1068 sum2 a_195_n212# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1069 vdd a_195_n281# sum2 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1070 a_78_n267# a_38_n219# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1071 p2 a_38_n288# a_78_n267# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1072 a_235_n260# a_195_n212# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1073 sum2 a_195_n281# a_235_n260# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1074 a_38_n288# a_n1_n228# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1075 vdd b2 a_38_n288# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1076 a_195_n281# a_156_n221# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1077 vdd c1 a_195_n281# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1078 a_38_n313# a_n1_n228# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1079 a_38_n288# b2 a_38_n313# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1080 a_195_n306# a_156_n221# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1081 a_195_n281# c1 a_195_n306# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1082 a_31_n354# a2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1083 vdd b2 a_31_n354# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1084 g2 a_31_n354# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1085 a_31_n379# a2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1086 a_31_n354# b2 a_31_n379# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1087 g2 a_31_n354# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1088 a_147_n378# p2 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1089 vdd g1 a_147_n378# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1090 a_181_n403# a_147_n378# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1091 a_221_n383# a_181_n403# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1092 a_221_n405# g2 a_221_n383# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1093 c2 a_221_n405# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1094 a_147_n403# p2 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1095 a_147_n378# g1 a_147_n403# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1096 a_181_n403# a_147_n378# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1097 a_221_n405# a_181_n403# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1098 gnd g2 a_221_n405# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1099 c2 a_221_n405# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1100 a_5_n513# a3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1101 vdd b3 a_5_n513# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1102 a_44_n504# a_5_n513# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1103 vdd a3 a_44_n504# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1104 a_162_n506# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1105 vdd c2 a_162_n506# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1106 a_201_n497# a_162_n506# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1107 vdd p3 a_201_n497# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1108 a_5_n538# a3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1109 a_5_n513# b3 a_5_n538# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1110 a_44_n529# a_5_n513# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1111 a_44_n504# a3 a_44_n529# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1112 p3 a_44_n504# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1113 vdd a_44_n573# p3 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1114 a_162_n531# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1115 a_162_n506# c2 a_162_n531# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1116 a_201_n522# a_162_n506# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1117 a_201_n497# p3 a_201_n522# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1118 sum3 a_201_n497# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1119 vdd a_201_n566# sum3 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1120 a_84_n552# a_44_n504# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1121 p3 a_44_n573# a_84_n552# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1122 a_241_n545# a_201_n497# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1123 sum3 a_201_n566# a_241_n545# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1124 a_44_n573# a_5_n513# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1125 vdd b3 a_44_n573# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1126 a_201_n566# a_162_n506# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1127 vdd c2 a_201_n566# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1128 a_44_n598# a_5_n513# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1129 a_44_n573# b3 a_44_n598# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1130 a_201_n591# a_162_n506# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1131 a_201_n566# c2 a_201_n591# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1132 a_37_n639# a3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1133 vdd b3 a_37_n639# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1134 g3 a_37_n639# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1135 a_37_n664# a3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1136 a_37_n639# b3 a_37_n664# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1137 g3 a_37_n639# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1138 a_153_n663# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1139 vdd g2 a_153_n663# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1140 a_187_n688# a_153_n663# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1141 a_226_n663# p3 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1142 vdd a_181_n403# a_226_n663# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1143 a_159_n1149# a_226_n663# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1144 a_297_n668# a_159_n1149# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1145 a_297_n690# a_187_n688# a_297_n668# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1146 a_244_n719# a_297_n690# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1147 a_153_n688# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1148 a_153_n663# g2 a_153_n688# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1149 a_187_n688# a_153_n663# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1150 a_226_n688# p3 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1151 a_226_n663# a_181_n403# a_226_n688# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1152 a_159_n1149# a_226_n663# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1153 a_297_n690# a_159_n1149# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1154 gnd a_187_n688# a_297_n690# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1155 a_244_n719# a_297_n690# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1156 a_250_n749# a_244_n719# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1157 a_250_n771# g3 a_250_n749# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1158 c3 a_250_n771# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1159 a_250_n771# a_244_n719# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1160 gnd g3 a_250_n771# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1161 c3 a_250_n771# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1162 a_5_n893# a4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1163 vdd b4 a_5_n893# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1164 a_44_n884# a_5_n893# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1165 vdd a4 a_44_n884# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1166 a_162_n886# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1167 vdd c3 a_162_n886# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1168 a_201_n877# a_162_n886# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1169 vdd p4 a_201_n877# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1170 a_5_n918# a4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1171 a_5_n893# b4 a_5_n918# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1172 a_44_n909# a_5_n893# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1173 a_44_n884# a4 a_44_n909# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1174 p4 a_44_n884# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1175 vdd a_44_n953# p4 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1176 a_162_n911# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1177 a_162_n886# c3 a_162_n911# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1178 a_201_n902# a_162_n886# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1179 a_201_n877# p4 a_201_n902# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1180 sum4 a_201_n877# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1181 vdd a_201_n946# sum4 Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1182 a_84_n932# a_44_n884# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1183 p4 a_44_n953# a_84_n932# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1184 a_241_n925# a_201_n877# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1185 sum4 a_201_n946# a_241_n925# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1186 a_44_n953# a_5_n893# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1187 vdd b4 a_44_n953# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1188 a_201_n946# a_162_n886# vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1189 vdd c3 a_201_n946# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1190 a_44_n978# a_5_n893# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1191 a_44_n953# b4 a_44_n978# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1192 a_201_n971# a_162_n886# gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1193 a_201_n946# c3 a_201_n971# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1194 a_37_n1019# a4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1195 vdd b4 a_37_n1019# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1196 g4 a_37_n1019# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1197 a_37_n1044# a4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1198 a_37_n1019# b4 a_37_n1044# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1199 g4 a_37_n1019# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1200 a_153_n1043# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1201 vdd g3 a_153_n1043# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1202 a_187_n1068# a_153_n1043# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1203 a_226_n1043# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1204 vdd a_187_n688# a_226_n1043# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1205 a_260_n1068# a_226_n1043# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1206 a_298_n1048# a_260_n1068# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1207 a_298_n1070# a_187_n1068# a_298_n1048# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1208 a_222_n1150# a_298_n1070# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1209 a_153_n1068# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1210 a_153_n1043# g3 a_153_n1068# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1211 a_187_n1068# a_153_n1043# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1212 a_226_n1068# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1213 a_226_n1043# a_187_n688# a_226_n1068# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1214 a_260_n1068# a_226_n1043# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1215 a_298_n1070# a_260_n1068# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1216 gnd a_187_n1068# a_298_n1070# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1217 a_222_n1150# a_298_n1070# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1218 a_151_n1135# p4 vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=-0 ps=0
M1219 vdd a_159_n1149# a_151_n1135# Vdd CMOSP w=20 l=2
+  ad=-0 pd=0 as=0 ps=0
M1220 a_185_n1160# a_151_n1135# vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=-0 ps=0
M1221 a_217_n1140# a_185_n1160# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1222 a_217_n1162# a_222_n1150# a_217_n1140# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1223 a_242_n1162# a_217_n1162# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1224 a_151_n1160# p4 gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=-0 ps=0
M1225 a_151_n1135# a_159_n1149# a_151_n1160# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1226 a_185_n1160# a_151_n1135# gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=-0 ps=0
M1227 a_267_n1147# a_242_n1162# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1228 a_267_n1169# g4 a_267_n1147# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1229 cout a_267_n1169# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=-0 ps=0
M1230 a_217_n1162# a_185_n1160# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1231 gnd a_222_n1150# a_217_n1162# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1232 a_242_n1162# a_217_n1162# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
M1233 a_267_n1169# a_242_n1162# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=-0 ps=0
M1234 gnd g4 a_267_n1169# Gnd CMOSN w=10 l=2
+  ad=-0 pd=0 as=0 ps=0
M1235 cout a_267_n1169# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=-0 ps=0
C0 g3 vdd 0.4fF
C1 vdd a_222_n1150# 0.5fF
C2 a3 b3 1.7fF
C3 a_159_n1149# a_187_n688# 0.5fF
C4 a3 a_44_n504# 0.1fF
C5 a_260_n1068# vdd 0.2fF
C6 g4 cout 0.1fF
C7 a1 xor_0/nand_1/out 0.1fF
C8 vdd xor_1/nand_0/out 0.3fF
C9 vdd a_201_n566# 0.3fF
C10 gnd a_201_n497# 0.0fF
C11 sum4 a_201_n877# 0.0fF
C12 a_84_n932# a_44_n953# 0.0fF
C13 p4 vdd 0.9fF
C14 gnd a_221_n405# 0.3fF
C15 a_38_n219# p2 0.0fF
C16 g2 a_181_n403# 0.3fF
C17 vdd gnd 0.5fF
C18 gnd a_31_n354# 0.1fF
C19 sum4 c3 0.1fF
C20 a_226_n1043# a_260_n1068# 0.0fF
C21 a_162_n886# gnd 0.3fF
C22 a_250_n771# vdd 0.3fF
C23 i1 p1 0.3fF
C24 a_44_n573# a_84_n552# 0.0fF
C25 a_159_n1149# vdd 0.9fF
C26 a_153_n663# a_187_n688# 0.0fF
C27 cout a_267_n1169# 0.1fF
C28 a_201_n877# p4 0.1fF
C29 g4 vdd 0.3fF
C30 a_226_n1043# gnd 0.1fF
C31 a_5_n513# a_44_n573# 0.0fF
C32 g3 c3 0.2fF
C33 g2 p3 0.0fF
C34 a_37_n639# g3 0.0fF
C35 a_44_n884# vdd 0.5fF
C36 a_201_n877# gnd 0.0fF
C37 vdd a_162_n506# 0.6fF
C38 a_217_n1162# a_242_n1162# 0.1fF
C39 a_153_n1043# g3 0.6fF
C40 a_226_n1043# a_159_n1149# 0.1fF
C41 g1 and_0/nand_0/out 0.0fF
C42 gnd a_38_n288# 0.1fF
C43 c1 a_195_n281# 0.1fF
C44 c3 p4 0.2fF
C45 a_226_n663# gnd 0.1fF
C46 c3 gnd 0.2fF
C47 a_244_n719# a_297_n690# 0.1fF
C48 a_153_n663# vdd 0.4fF
C49 a_37_n639# gnd 0.1fF
C50 vdd a_267_n1169# 0.3fF
C51 c3 a_250_n771# 0.1fF
C52 a_159_n1149# a_226_n663# 0.0fF
C53 vdd a_195_n212# 0.5fF
C54 gnd xor_0/nand_0/out 0.0fF
C55 a_153_n1043# gnd 0.1fF
C56 a_37_n1019# vdd 0.4fF
C57 a_44_n504# p3 0.0fF
C58 c2 a_201_n566# 0.1fF
C59 a_44_n953# p4 0.2fF
C60 a_159_n1149# c3 0.2fF
C61 i1 and_1/nand_0/out 0.0fF
C62 a_181_n403# p3 0.0fF
C63 a_44_n953# gnd 0.1fF
C64 gnd c2 0.2fF
C65 vdd a_5_n513# 0.6fF
C66 a_181_n403# a_147_n378# 0.0fF
C67 vdd b1 0.0fF
C68 c1 gnd 0.2fF
C69 gnd a_195_n281# 0.1fF
C70 g1 a_147_n378# 0.6fF
C71 vdd p2 0.5fF
C72 a_187_n688# g2 1.0fF
C73 g1 i1 0.1fF
C74 g3 p4 0.0fF
C75 vdd p1 0.4fF
C76 sum4 a_159_n1149# 0.1fF
C77 gnd a_222_n1150# 0.1fF
C78 sum1 c0 0.1fF
C79 a_44_n573# b3 0.1fF
C80 a_201_n497# sum3 0.0fF
C81 xor_1/nand_2/out sum1 0.1fF
C82 b4 a4 1.8fF
C83 g3 a_250_n771# 0.1fF
C84 gnd xor_1/nand_0/out 0.0fF
C85 gnd a_201_n566# 0.1fF
C86 vdd sum3 0.3fF
C87 c2 a_162_n506# 0.1fF
C88 g3 a_159_n1149# 0.2fF
C89 p4 gnd 1.1fF
C90 vdd xor_1/nand_2/out 0.3fF
C91 g2 a_221_n405# 0.1fF
C92 xor_0/nand_2/out xor_0/nand_3/a_n2_n25# 0.0fF
C93 xor_1/nand_1/out p1 0.1fF
C94 g4 a_222_n1150# 0.6fF
C95 vdd g2 0.4fF
C96 a_38_n288# p2 0.2fF
C97 a_31_n354# g2 0.0fF
C98 a_187_n688# a_181_n403# 0.1fF
C99 sum2 vdd 0.3fF
C100 a_159_n1149# p4 0.0fF
C101 a_250_n771# gnd 0.3fF
C102 a_244_n719# vdd 0.3fF
C103 a_298_n1070# a_187_n1068# 0.1fF
C104 a_159_n1149# gnd 0.4fF
C105 vdd a_217_n1162# 0.3fF
C106 b1 xor_0/nand_0/out 0.1fF
C107 p4 a_44_n884# 0.0fF
C108 p3 a_44_n573# 0.2fF
C109 a_162_n506# a_201_n566# 0.0fF
C110 b4 a_5_n893# 0.1fF
C111 a_159_n1149# a_250_n771# 0.1fF
C112 xor_0/nand_2/out b1 0.1fF
C113 vdd and_1/nand_0/out 0.4fF
C114 a_n1_n228# b2 0.1fF
C115 a_181_n403# a_201_n497# 0.1fF
C116 a_44_n884# gnd 0.0fF
C117 a_37_n664# b3 0.0fF
C118 vdd a_44_n504# 0.5fF
C119 gnd a_162_n506# 0.3fF
C120 a_187_n688# p3 0.1fF
C121 xor_0/nand_2/out p1 0.1fF
C122 a_37_n1044# b4 0.0fF
C123 gnd a1 0.1fF
C124 vdd and_0/nand_0/out 0.4fF
C125 vdd a_181_n403# 0.4fF
C126 c1 p2 0.2fF
C127 a_187_n688# a_201_n946# 0.1fF
C128 b2 a_31_n379# 0.0fF
C129 i1 or_0/a_n18_n20# 0.1fF
C130 g1 vdd 0.3fF
C131 a2 gnd 0.3fF
C132 a_297_n690# a_187_n688# 0.1fF
C133 b4 vdd 0.0fF
C134 a_153_n663# gnd 0.1fF
C135 gnd a_267_n1169# 0.3fF
C136 gnd a_195_n212# 0.0fF
C137 vdd a_242_n1162# 0.6fF
C138 xor_1/nand_2/out xor_1/nand_3/a_n2_n25# 0.0fF
C139 p3 a_201_n497# 0.1fF
C140 c2 sum3 0.1fF
C141 a_37_n1019# gnd 0.1fF
C142 a4 a_5_n893# 0.2fF
C143 a_298_n1070# vdd 0.3fF
C144 a_187_n1068# a_187_n688# 0.1fF
C145 a_241_n925# a_201_n946# 0.0fF
C146 vdd p3 0.5fF
C147 gnd a_5_n513# 0.3fF
C148 g2 c2 0.2fF
C149 a_201_n946# vdd 0.3fF
C150 a_151_n1135# a_185_n1160# 0.0fF
C151 a_38_n219# vdd 0.5fF
C152 vdd a_147_n378# 0.4fF
C153 gnd p2 0.3fF
C154 g4 a_267_n1169# 0.1fF
C155 a_226_n663# a_181_n403# 0.6fF
C156 a_37_n639# b3 0.2fF
C157 i1 vdd 0.1fF
C158 sum2 c1 0.1fF
C159 a_162_n886# a_201_n946# 0.0fF
C160 g4 a_37_n1019# 0.0fF
C161 b2 a_31_n354# 0.2fF
C162 a4 a_5_n918# 0.0fF
C163 sum2 a_195_n281# 0.2fF
C164 a_297_n690# vdd 0.3fF
C165 gnd p1 0.1fF
C166 a_201_n566# a_241_n545# 0.0fF
C167 a4 vdd 0.0fF
C168 xor_1/nand_0/out c0 0.1fF
C169 a_201_n566# sum3 0.2fF
C170 vdd a_151_n1135# 0.4fF
C171 g3 a_244_n719# 0.7fF
C172 gnd c0 0.0fF
C173 vdd a_n1_n228# 0.6fF
C174 a_187_n1068# vdd 0.5fF
C175 vdd xor_0/nand_1/out 0.3fF
C176 vdd a_44_n573# 0.3fF
C177 gnd a3 0.3fF
C178 a_181_n403# c2 0.1fF
C179 a_217_n1162# a_222_n1150# 0.1fF
C180 a1 b1 1.7fF
C181 a_235_n260# a_195_n281# 0.0fF
C182 g1 c1 0.1fF
C183 or_0/a_n18_n20# vdd 0.3fF
C184 vdd a_156_n221# 0.6fF
C185 b2 a_38_n288# 0.1fF
C186 b4 a_44_n953# 0.1fF
C187 c3 a_201_n946# 0.1fF
C188 a_187_n688# vdd 0.7fF
C189 a_244_n719# gnd 0.1fF
C190 vdd cout 0.2fF
C191 a_5_n893# vdd 0.6fF
C192 a_78_n267# a_38_n288# 0.0fF
C193 vdd a_185_n1160# 0.2fF
C194 gnd a_217_n1162# 0.3fF
C195 a_195_n212# p2 0.1fF
C196 a_159_n1149# a_244_n719# 0.1fF
C197 a_n1_n228# a_38_n288# 0.0fF
C198 gnd b3 0.3fF
C199 c2 p3 0.2fF
C200 a_181_n403# a_201_n566# 0.1fF
C201 a_226_n1043# a_187_n688# 0.6fF
C202 vdd sum1 0.3fF
C203 sum4 a_201_n946# 0.2fF
C204 gnd a_44_n504# 0.0fF
C205 vdd a_201_n497# 0.5fF
C206 a_242_n1162# a_222_n1150# 0.2fF
C207 gnd a_181_n403# 0.1fF
C208 vdd a_221_n405# 0.3fF
C209 a_187_n688# a_201_n877# 0.1fF
C210 a_298_n1070# a_222_n1150# 0.1fF
C211 vdd a_31_n354# 0.4fF
C212 a_187_n1068# a_153_n1043# 0.0fF
C213 a_162_n886# vdd 0.6fF
C214 b4 gnd 0.4fF
C215 a_153_n663# g2 0.6fF
C216 c3 a_187_n688# 0.1fF
C217 gnd a_242_n1162# 0.1fF
C218 sum2 a_195_n212# 0.0fF
C219 a_298_n1070# gnd 0.3fF
C220 a_226_n1043# vdd 0.4fF
C221 vdd xor_1/nand_1/out 0.3fF
C222 gnd p3 1.0fF
C223 a_201_n946# gnd 0.1fF
C224 a_201_n877# vdd 0.5fF
C225 c0 p1 0.2fF
C226 gnd a_147_n378# 0.1fF
C227 a_38_n219# gnd 0.0fF
C228 a_187_n1068# g3 1.1fF
C229 g4 a_242_n1162# 0.1fF
C230 or_0/a_n18_n20# c1 0.1fF
C231 c1 a_156_n221# 0.1fF
C232 gnd b2 0.3fF
C233 vdd a_38_n288# 0.3fF
C234 a_5_n893# a_44_n953# 0.0fF
C235 a_156_n221# a_195_n281# 0.0fF
C236 a_226_n663# vdd 0.4fF
C237 a_297_n690# gnd 0.3fF
C238 a_187_n1068# a_260_n1068# 0.5fF
C239 c3 vdd 0.2fF
C240 a4 gnd 0.5fF
C241 a_37_n639# vdd 0.4fF
C242 gnd a_151_n1135# 0.1fF
C243 xor_1/nand_2/out c0 0.1fF
C244 a_5_n513# b3 0.1fF
C245 g3 a_187_n688# 0.1fF
C246 a_162_n886# c3 0.1fF
C247 gnd a_n1_n228# 0.3fF
C248 vdd xor_0/nand_0/out 0.3fF
C249 a_153_n1043# vdd 0.4fF
C250 xor_0/nand_2/out vdd 0.3fF
C251 gnd a_44_n573# 0.1fF
C252 a_221_n405# c2 0.1fF
C253 a_159_n1149# a_151_n1135# 0.6fF
C254 a_44_n953# vdd 0.3fF
C255 a_185_n1160# a_222_n1150# 0.1fF
C256 a_37_n1019# b4 0.2fF
C257 b1 and_0/nand_0/out 0.1fF
C258 vdd c2 0.2fF
C259 a_187_n688# p4 0.0fF
C260 sum4 vdd 0.3fF
C261 a_187_n1068# a_159_n1149# 0.1fF
C262 or_0/a_n18_n20# gnd 0.3fF
C263 vdd c1 0.2fF
C264 vdd a_195_n281# 0.3fF
C265 g1 p2 0.0fF
C266 gnd a_156_n221# 0.3fF
C267 a2 a_38_n219# 0.1fF
C268 a4 a_44_n884# 0.1fF
C269 a_187_n688# gnd 0.1fF
C270 gnd cout 0.1fF
C271 a2 b2 1.7fF
C272 a_5_n893# gnd 0.3fF
C273 c0 and_1/nand_0/out 0.1fF
C275 cout gnd 0.8fF
C276 a_267_n1169# gnd 0.3fF
C277 a_217_n1162# gnd 0.3fF
C278 a_242_n1162# gnd 0.4fF
C279 a_151_n1135# gnd 0.3fF
C280 a_185_n1160# gnd 0.5fF
C281 a_222_n1150# gnd 0.9fF
C282 a_298_n1070# gnd 0.3fF
C283 a_187_n1068# gnd 0.8fF
C284 a_226_n1043# gnd 0.3fF
C285 a_153_n1043# gnd 0.3fF
C286 a_260_n1068# gnd 0.5fF
C287 g4 gnd 1.9fF
C288 a_37_n1019# gnd 0.3fF
C289 sum4 gnd 0.5fF
C290 a_201_n946# gnd 0.5fF
C291 a_201_n877# gnd 0.4fF
C292 a_44_n953# gnd 0.5fF
C293 p4 gnd 2.7fF
C294 a_44_n884# gnd 0.4fF
C295 b4 gnd 2.6fF
C296 a4 gnd 1.9fF
C297 a_5_n893# gnd 0.8fF
C298 a_162_n886# gnd 0.8fF
C299 c3 gnd 2.2fF
C300 a_250_n771# gnd 0.3fF
C301 a_244_n719# gnd 0.7fF
C302 a_297_n690# gnd 0.3fF
C303 a_187_n688# gnd 5.1fF
C304 a_226_n663# gnd 0.3fF
C305 a_153_n663# gnd 0.3fF
C306 a_159_n1149# gnd 6.5fF
C307 g3 gnd 3.6fF
C308 a_37_n639# gnd 0.3fF
C309 b3 gnd 1.8fF
C310 sum3 gnd 0.5fF
C311 a_201_n566# gnd 0.5fF
C312 a_201_n497# gnd 0.4fF
C313 a_44_n573# gnd 0.5fF
C314 p3 gnd 2.0fF
C315 a_44_n504# gnd 0.4fF
C316 a3 gnd 1.5fF
C317 a_5_n513# gnd 0.8fF
C318 a_162_n506# gnd 0.8fF
C319 c2 gnd 2.3fF
C320 a_221_n405# gnd 0.3fF
C321 a_147_n378# gnd 0.3fF
C322 a_181_n403# gnd 3.8fF
C323 g2 gnd 3.4fF
C324 a_31_n354# gnd 0.3fF
C325 b2 gnd 1.8fF
C326 sum2 gnd 0.5fF
C327 a_195_n281# gnd 0.5fF
C328 a_195_n212# gnd 0.4fF
C329 a_38_n288# gnd 0.5fF
C330 p2 gnd 1.4fF
C331 a_38_n219# gnd 0.4fF
C332 a2 gnd 1.5fF
C333 a_n1_n228# gnd 0.8fF
C334 a_156_n221# gnd 0.8fF
C335 xor_0/nand_0/out gnd 0.8fF
C336 xor_0/nand_2/out gnd 0.5fF
C337 xor_0/nand_1/out gnd 0.4fF
C338 and_1/nand_0/out gnd 0.3fF
C339 c0 gnd 2.5fF
C340 xor_1/nand_0/out gnd 0.8fF
C341 xor_1/nand_2/out gnd 0.5fF
C342 xor_1/nand_1/out gnd 0.4fF
C343 and_0/nand_0/out gnd 0.3fF
C344 b1 gnd 2.8fF
C345 a1 gnd 1.1fF
C346 or_0/a_n18_n20# gnd 0.3fF



Vc0 c0 gnd 0V

Vda1 a1 gnd pwl(0ns 1.8V 25ns 1.8 27ns 0V 40ns 0V)
Vda2 a2 gnd pwl(0ns 0V 25ns 0 27ns 1.8V 40ns 1.8V)
Vda3 a3 gnd pwl(0ns 1.8V 25ns 1.8 27ns 1.8V 40ns 1.8V)
Vda4 a4 gnd pwl(0ns 0V 25ns 0 27ns 0V 40ns 0V)

Vdb1 b1 gnd pwl(0ns 0V 25ns 0 27ns 1.8V 40ns 1.8V)
Vdb2 b2 gnd pwl(0ns 0V 25ns 0 27ns 1.8V 40ns 1.8V)
Vdb3 b3 gnd pwl(0ns 0V 25ns 0 27ns 0V 40ns 0V)
Vdb4 b4 gnd pwl(0ns 1.8V 25ns 1.8 27ns 0V 40ns 0V)
 

*  1010 + 0001 = 1011
*  1010 + 0010 = 1100
*  1010 + 0100 = 1110

.tran 20ps 40ns
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
    * plot V(a1) V(a2) V(a3)
    * plot  V(p4)
    * plot V(sum1)
    * plot V(sum2)
    * plot V(sum3)
    * plot V(sum4)
    plot V(c1)
    plot V(c2)
    plot V(c3)
    plot V(cout)
    
  
   