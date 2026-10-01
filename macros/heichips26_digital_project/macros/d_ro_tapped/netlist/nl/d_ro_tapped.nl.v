module d_ro_tapped (enable,
    osc,
    ffsel,
    invsel);
 input enable;
 output osc;
 input [1:0] ffsel;
 input [4:0] invsel;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire _40_;
 wire net1;
 wire \ff_wire[0] ;
 wire \ff_wire[1] ;
 wire \ff_wire[2] ;
 wire \ff_wire[3] ;
 wire net2;
 wire net3;
 wire \inv_wire[0] ;
 wire \inv_wire[100] ;
 wire \inv_wire[101] ;
 wire \inv_wire[102] ;
 wire \inv_wire[103] ;
 wire \inv_wire[104] ;
 wire \inv_wire[105] ;
 wire \inv_wire[106] ;
 wire \inv_wire[107] ;
 wire \inv_wire[108] ;
 wire \inv_wire[109] ;
 wire \inv_wire[10] ;
 wire \inv_wire[110] ;
 wire \inv_wire[111] ;
 wire \inv_wire[112] ;
 wire \inv_wire[113] ;
 wire \inv_wire[114] ;
 wire \inv_wire[115] ;
 wire \inv_wire[116] ;
 wire \inv_wire[117] ;
 wire \inv_wire[118] ;
 wire \inv_wire[119] ;
 wire \inv_wire[11] ;
 wire \inv_wire[120] ;
 wire \inv_wire[121] ;
 wire \inv_wire[122] ;
 wire \inv_wire[123] ;
 wire \inv_wire[124] ;
 wire \inv_wire[125] ;
 wire \inv_wire[126] ;
 wire \inv_wire[127] ;
 wire \inv_wire[128] ;
 wire \inv_wire[129] ;
 wire \inv_wire[12] ;
 wire \inv_wire[130] ;
 wire \inv_wire[131] ;
 wire \inv_wire[132] ;
 wire \inv_wire[133] ;
 wire \inv_wire[134] ;
 wire \inv_wire[135] ;
 wire \inv_wire[136] ;
 wire \inv_wire[137] ;
 wire \inv_wire[138] ;
 wire \inv_wire[139] ;
 wire \inv_wire[13] ;
 wire \inv_wire[14] ;
 wire \inv_wire[15] ;
 wire \inv_wire[16] ;
 wire \inv_wire[17] ;
 wire \inv_wire[18] ;
 wire \inv_wire[19] ;
 wire \inv_wire[1] ;
 wire \inv_wire[20] ;
 wire \inv_wire[21] ;
 wire \inv_wire[22] ;
 wire \inv_wire[23] ;
 wire \inv_wire[24] ;
 wire \inv_wire[25] ;
 wire \inv_wire[26] ;
 wire \inv_wire[27] ;
 wire \inv_wire[28] ;
 wire \inv_wire[29] ;
 wire \inv_wire[2] ;
 wire \inv_wire[30] ;
 wire \inv_wire[31] ;
 wire \inv_wire[32] ;
 wire \inv_wire[33] ;
 wire \inv_wire[34] ;
 wire \inv_wire[35] ;
 wire \inv_wire[36] ;
 wire \inv_wire[37] ;
 wire \inv_wire[38] ;
 wire \inv_wire[39] ;
 wire \inv_wire[3] ;
 wire \inv_wire[40] ;
 wire \inv_wire[41] ;
 wire \inv_wire[42] ;
 wire \inv_wire[43] ;
 wire \inv_wire[44] ;
 wire \inv_wire[45] ;
 wire \inv_wire[46] ;
 wire \inv_wire[47] ;
 wire \inv_wire[48] ;
 wire \inv_wire[49] ;
 wire \inv_wire[4] ;
 wire \inv_wire[50] ;
 wire \inv_wire[51] ;
 wire \inv_wire[52] ;
 wire \inv_wire[53] ;
 wire \inv_wire[54] ;
 wire \inv_wire[55] ;
 wire \inv_wire[56] ;
 wire \inv_wire[57] ;
 wire \inv_wire[58] ;
 wire \inv_wire[59] ;
 wire \inv_wire[5] ;
 wire \inv_wire[60] ;
 wire \inv_wire[61] ;
 wire \inv_wire[62] ;
 wire \inv_wire[63] ;
 wire \inv_wire[64] ;
 wire \inv_wire[65] ;
 wire \inv_wire[66] ;
 wire \inv_wire[67] ;
 wire \inv_wire[68] ;
 wire \inv_wire[69] ;
 wire \inv_wire[6] ;
 wire \inv_wire[70] ;
 wire \inv_wire[71] ;
 wire \inv_wire[72] ;
 wire \inv_wire[73] ;
 wire \inv_wire[74] ;
 wire \inv_wire[75] ;
 wire \inv_wire[76] ;
 wire \inv_wire[77] ;
 wire \inv_wire[78] ;
 wire \inv_wire[79] ;
 wire \inv_wire[7] ;
 wire \inv_wire[80] ;
 wire \inv_wire[81] ;
 wire \inv_wire[82] ;
 wire \inv_wire[83] ;
 wire \inv_wire[84] ;
 wire \inv_wire[85] ;
 wire \inv_wire[86] ;
 wire \inv_wire[87] ;
 wire \inv_wire[88] ;
 wire \inv_wire[89] ;
 wire \inv_wire[8] ;
 wire \inv_wire[90] ;
 wire \inv_wire[91] ;
 wire \inv_wire[92] ;
 wire \inv_wire[93] ;
 wire \inv_wire[94] ;
 wire \inv_wire[95] ;
 wire \inv_wire[96] ;
 wire \inv_wire[97] ;
 wire \inv_wire[98] ;
 wire \inv_wire[99] ;
 wire \inv_wire[9] ;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;

 sg13cmos5l_decap_8 FILLER_0_0 ();
 sg13cmos5l_decap_8 FILLER_0_105 ();
 sg13cmos5l_decap_8 FILLER_0_112 ();
 sg13cmos5l_decap_8 FILLER_0_119 ();
 sg13cmos5l_decap_8 FILLER_0_126 ();
 sg13cmos5l_decap_8 FILLER_0_133 ();
 sg13cmos5l_decap_8 FILLER_0_14 ();
 sg13cmos5l_decap_8 FILLER_0_140 ();
 sg13cmos5l_decap_8 FILLER_0_147 ();
 sg13cmos5l_decap_8 FILLER_0_154 ();
 sg13cmos5l_decap_8 FILLER_0_161 ();
 sg13cmos5l_decap_8 FILLER_0_168 ();
 sg13cmos5l_decap_8 FILLER_0_175 ();
 sg13cmos5l_decap_8 FILLER_0_182 ();
 sg13cmos5l_fill_2 FILLER_0_189 ();
 sg13cmos5l_fill_1 FILLER_0_191 ();
 sg13cmos5l_decap_8 FILLER_0_21 ();
 sg13cmos5l_decap_8 FILLER_0_28 ();
 sg13cmos5l_decap_8 FILLER_0_35 ();
 sg13cmos5l_decap_8 FILLER_0_42 ();
 sg13cmos5l_decap_8 FILLER_0_49 ();
 sg13cmos5l_decap_8 FILLER_0_56 ();
 sg13cmos5l_decap_8 FILLER_0_63 ();
 sg13cmos5l_decap_8 FILLER_0_7 ();
 sg13cmos5l_decap_8 FILLER_0_70 ();
 sg13cmos5l_decap_8 FILLER_0_77 ();
 sg13cmos5l_decap_8 FILLER_0_84 ();
 sg13cmos5l_decap_8 FILLER_0_91 ();
 sg13cmos5l_decap_8 FILLER_0_98 ();
 sg13cmos5l_decap_8 FILLER_10_118 ();
 sg13cmos5l_fill_2 FILLER_10_125 ();
 sg13cmos5l_fill_1 FILLER_10_127 ();
 sg13cmos5l_decap_8 FILLER_10_131 ();
 sg13cmos5l_decap_8 FILLER_10_147 ();
 sg13cmos5l_decap_8 FILLER_10_154 ();
 sg13cmos5l_decap_8 FILLER_10_161 ();
 sg13cmos5l_decap_8 FILLER_10_168 ();
 sg13cmos5l_decap_8 FILLER_10_175 ();
 sg13cmos5l_decap_4 FILLER_10_18 ();
 sg13cmos5l_decap_8 FILLER_10_182 ();
 sg13cmos5l_fill_2 FILLER_10_189 ();
 sg13cmos5l_fill_1 FILLER_10_191 ();
 sg13cmos5l_fill_2 FILLER_10_22 ();
 sg13cmos5l_decap_8 FILLER_10_27 ();
 sg13cmos5l_fill_1 FILLER_10_4 ();
 sg13cmos5l_fill_2 FILLER_10_65 ();
 sg13cmos5l_fill_1 FILLER_10_67 ();
 sg13cmos5l_fill_1 FILLER_10_71 ();
 sg13cmos5l_decap_8 FILLER_10_84 ();
 sg13cmos5l_fill_1 FILLER_10_91 ();
 sg13cmos5l_fill_2 FILLER_11_102 ();
 sg13cmos5l_fill_1 FILLER_11_104 ();
 sg13cmos5l_fill_2 FILLER_11_108 ();
 sg13cmos5l_fill_1 FILLER_11_110 ();
 sg13cmos5l_fill_1 FILLER_11_116 ();
 sg13cmos5l_decap_4 FILLER_11_122 ();
 sg13cmos5l_fill_2 FILLER_11_126 ();
 sg13cmos5l_decap_4 FILLER_11_131 ();
 sg13cmos5l_fill_1 FILLER_11_135 ();
 sg13cmos5l_decap_8 FILLER_11_144 ();
 sg13cmos5l_decap_8 FILLER_11_151 ();
 sg13cmos5l_decap_8 FILLER_11_158 ();
 sg13cmos5l_decap_8 FILLER_11_165 ();
 sg13cmos5l_decap_8 FILLER_11_17 ();
 sg13cmos5l_decap_8 FILLER_11_172 ();
 sg13cmos5l_decap_8 FILLER_11_179 ();
 sg13cmos5l_decap_4 FILLER_11_186 ();
 sg13cmos5l_fill_2 FILLER_11_190 ();
 sg13cmos5l_decap_4 FILLER_11_27 ();
 sg13cmos5l_fill_1 FILLER_11_31 ();
 sg13cmos5l_fill_1 FILLER_11_35 ();
 sg13cmos5l_fill_1 FILLER_11_4 ();
 sg13cmos5l_decap_8 FILLER_11_55 ();
 sg13cmos5l_fill_2 FILLER_11_62 ();
 sg13cmos5l_fill_2 FILLER_11_67 ();
 sg13cmos5l_fill_1 FILLER_11_72 ();
 sg13cmos5l_decap_8 FILLER_11_76 ();
 sg13cmos5l_fill_1 FILLER_11_83 ();
 sg13cmos5l_decap_4 FILLER_11_87 ();
 sg13cmos5l_fill_1 FILLER_11_91 ();
 sg13cmos5l_fill_1 FILLER_11_98 ();
 sg13cmos5l_decap_8 FILLER_12_102 ();
 sg13cmos5l_decap_8 FILLER_12_121 ();
 sg13cmos5l_decap_4 FILLER_12_131 ();
 sg13cmos5l_fill_1 FILLER_12_135 ();
 sg13cmos5l_decap_8 FILLER_12_142 ();
 sg13cmos5l_decap_8 FILLER_12_149 ();
 sg13cmos5l_decap_8 FILLER_12_156 ();
 sg13cmos5l_decap_8 FILLER_12_163 ();
 sg13cmos5l_decap_8 FILLER_12_170 ();
 sg13cmos5l_decap_8 FILLER_12_177 ();
 sg13cmos5l_decap_4 FILLER_12_18 ();
 sg13cmos5l_decap_8 FILLER_12_184 ();
 sg13cmos5l_fill_1 FILLER_12_191 ();
 sg13cmos5l_fill_2 FILLER_12_22 ();
 sg13cmos5l_decap_8 FILLER_12_27 ();
 sg13cmos5l_fill_2 FILLER_12_4 ();
 sg13cmos5l_fill_2 FILLER_12_56 ();
 sg13cmos5l_decap_8 FILLER_12_67 ();
 sg13cmos5l_decap_8 FILLER_12_74 ();
 sg13cmos5l_decap_8 FILLER_12_81 ();
 sg13cmos5l_decap_8 FILLER_12_88 ();
 sg13cmos5l_decap_8 FILLER_12_95 ();
 sg13cmos5l_decap_8 FILLER_1_102 ();
 sg13cmos5l_decap_8 FILLER_1_109 ();
 sg13cmos5l_decap_8 FILLER_1_11 ();
 sg13cmos5l_decap_8 FILLER_1_116 ();
 sg13cmos5l_decap_8 FILLER_1_123 ();
 sg13cmos5l_decap_8 FILLER_1_130 ();
 sg13cmos5l_decap_8 FILLER_1_137 ();
 sg13cmos5l_decap_8 FILLER_1_144 ();
 sg13cmos5l_decap_8 FILLER_1_151 ();
 sg13cmos5l_decap_8 FILLER_1_158 ();
 sg13cmos5l_decap_8 FILLER_1_165 ();
 sg13cmos5l_decap_8 FILLER_1_172 ();
 sg13cmos5l_decap_8 FILLER_1_179 ();
 sg13cmos5l_decap_8 FILLER_1_18 ();
 sg13cmos5l_decap_4 FILLER_1_186 ();
 sg13cmos5l_fill_2 FILLER_1_190 ();
 sg13cmos5l_decap_8 FILLER_1_25 ();
 sg13cmos5l_decap_8 FILLER_1_32 ();
 sg13cmos5l_decap_8 FILLER_1_39 ();
 sg13cmos5l_decap_8 FILLER_1_4 ();
 sg13cmos5l_decap_8 FILLER_1_46 ();
 sg13cmos5l_decap_8 FILLER_1_53 ();
 sg13cmos5l_decap_8 FILLER_1_60 ();
 sg13cmos5l_decap_8 FILLER_1_67 ();
 sg13cmos5l_decap_8 FILLER_1_74 ();
 sg13cmos5l_decap_8 FILLER_1_81 ();
 sg13cmos5l_decap_8 FILLER_1_88 ();
 sg13cmos5l_decap_8 FILLER_1_95 ();
 sg13cmos5l_decap_8 FILLER_2_104 ();
 sg13cmos5l_decap_8 FILLER_2_11 ();
 sg13cmos5l_decap_8 FILLER_2_111 ();
 sg13cmos5l_decap_8 FILLER_2_118 ();
 sg13cmos5l_decap_8 FILLER_2_125 ();
 sg13cmos5l_decap_8 FILLER_2_132 ();
 sg13cmos5l_decap_8 FILLER_2_139 ();
 sg13cmos5l_decap_8 FILLER_2_146 ();
 sg13cmos5l_decap_8 FILLER_2_153 ();
 sg13cmos5l_decap_8 FILLER_2_160 ();
 sg13cmos5l_decap_8 FILLER_2_167 ();
 sg13cmos5l_decap_8 FILLER_2_174 ();
 sg13cmos5l_decap_8 FILLER_2_18 ();
 sg13cmos5l_decap_8 FILLER_2_181 ();
 sg13cmos5l_decap_4 FILLER_2_188 ();
 sg13cmos5l_decap_8 FILLER_2_25 ();
 sg13cmos5l_decap_8 FILLER_2_32 ();
 sg13cmos5l_decap_8 FILLER_2_39 ();
 sg13cmos5l_decap_8 FILLER_2_4 ();
 sg13cmos5l_decap_8 FILLER_2_46 ();
 sg13cmos5l_fill_2 FILLER_2_53 ();
 sg13cmos5l_decap_8 FILLER_2_62 ();
 sg13cmos5l_decap_8 FILLER_2_69 ();
 sg13cmos5l_decap_8 FILLER_2_76 ();
 sg13cmos5l_decap_8 FILLER_2_83 ();
 sg13cmos5l_decap_8 FILLER_2_90 ();
 sg13cmos5l_decap_8 FILLER_2_97 ();
 sg13cmos5l_decap_8 FILLER_3_0 ();
 sg13cmos5l_decap_8 FILLER_3_104 ();
 sg13cmos5l_decap_8 FILLER_3_111 ();
 sg13cmos5l_decap_8 FILLER_3_118 ();
 sg13cmos5l_decap_8 FILLER_3_125 ();
 sg13cmos5l_decap_8 FILLER_3_132 ();
 sg13cmos5l_decap_8 FILLER_3_139 ();
 sg13cmos5l_decap_8 FILLER_3_14 ();
 sg13cmos5l_decap_8 FILLER_3_146 ();
 sg13cmos5l_decap_8 FILLER_3_153 ();
 sg13cmos5l_decap_8 FILLER_3_160 ();
 sg13cmos5l_decap_8 FILLER_3_167 ();
 sg13cmos5l_decap_8 FILLER_3_174 ();
 sg13cmos5l_decap_8 FILLER_3_181 ();
 sg13cmos5l_decap_4 FILLER_3_188 ();
 sg13cmos5l_decap_8 FILLER_3_21 ();
 sg13cmos5l_decap_4 FILLER_3_28 ();
 sg13cmos5l_decap_8 FILLER_3_7 ();
 sg13cmos5l_decap_8 FILLER_3_90 ();
 sg13cmos5l_decap_8 FILLER_3_97 ();
 sg13cmos5l_decap_8 FILLER_4_103 ();
 sg13cmos5l_decap_8 FILLER_4_110 ();
 sg13cmos5l_decap_8 FILLER_4_12 ();
 sg13cmos5l_decap_8 FILLER_4_120 ();
 sg13cmos5l_decap_8 FILLER_4_127 ();
 sg13cmos5l_decap_8 FILLER_4_134 ();
 sg13cmos5l_decap_8 FILLER_4_141 ();
 sg13cmos5l_decap_8 FILLER_4_148 ();
 sg13cmos5l_decap_8 FILLER_4_155 ();
 sg13cmos5l_decap_8 FILLER_4_162 ();
 sg13cmos5l_decap_8 FILLER_4_169 ();
 sg13cmos5l_decap_8 FILLER_4_176 ();
 sg13cmos5l_decap_8 FILLER_4_183 ();
 sg13cmos5l_decap_4 FILLER_4_19 ();
 sg13cmos5l_fill_2 FILLER_4_190 ();
 sg13cmos5l_fill_1 FILLER_4_23 ();
 sg13cmos5l_decap_4 FILLER_4_27 ();
 sg13cmos5l_fill_1 FILLER_4_31 ();
 sg13cmos5l_decap_4 FILLER_4_4 ();
 sg13cmos5l_fill_1 FILLER_4_64 ();
 sg13cmos5l_fill_1 FILLER_4_71 ();
 sg13cmos5l_decap_8 FILLER_4_77 ();
 sg13cmos5l_fill_1 FILLER_4_8 ();
 sg13cmos5l_decap_8 FILLER_4_84 ();
 sg13cmos5l_fill_2 FILLER_4_91 ();
 sg13cmos5l_decap_8 FILLER_4_96 ();
 sg13cmos5l_fill_2 FILLER_5_0 ();
 sg13cmos5l_decap_4 FILLER_5_105 ();
 sg13cmos5l_decap_4 FILLER_5_122 ();
 sg13cmos5l_fill_2 FILLER_5_126 ();
 sg13cmos5l_decap_4 FILLER_5_131 ();
 sg13cmos5l_fill_1 FILLER_5_135 ();
 sg13cmos5l_decap_8 FILLER_5_151 ();
 sg13cmos5l_decap_8 FILLER_5_158 ();
 sg13cmos5l_decap_8 FILLER_5_165 ();
 sg13cmos5l_decap_8 FILLER_5_172 ();
 sg13cmos5l_decap_8 FILLER_5_179 ();
 sg13cmos5l_decap_4 FILLER_5_18 ();
 sg13cmos5l_decap_4 FILLER_5_186 ();
 sg13cmos5l_fill_2 FILLER_5_190 ();
 sg13cmos5l_fill_1 FILLER_5_2 ();
 sg13cmos5l_fill_2 FILLER_5_22 ();
 sg13cmos5l_decap_4 FILLER_5_27 ();
 sg13cmos5l_fill_1 FILLER_5_31 ();
 sg13cmos5l_fill_1 FILLER_5_45 ();
 sg13cmos5l_fill_1 FILLER_5_50 ();
 sg13cmos5l_fill_2 FILLER_5_54 ();
 sg13cmos5l_fill_2 FILLER_5_61 ();
 sg13cmos5l_fill_1 FILLER_5_70 ();
 sg13cmos5l_decap_8 FILLER_5_80 ();
 sg13cmos5l_decap_8 FILLER_6_107 ();
 sg13cmos5l_fill_1 FILLER_6_114 ();
 sg13cmos5l_decap_8 FILLER_6_122 ();
 sg13cmos5l_decap_8 FILLER_6_129 ();
 sg13cmos5l_fill_1 FILLER_6_136 ();
 sg13cmos5l_decap_4 FILLER_6_150 ();
 sg13cmos5l_fill_2 FILLER_6_157 ();
 sg13cmos5l_decap_8 FILLER_6_165 ();
 sg13cmos5l_decap_8 FILLER_6_17 ();
 sg13cmos5l_decap_8 FILLER_6_172 ();
 sg13cmos5l_decap_8 FILLER_6_179 ();
 sg13cmos5l_decap_4 FILLER_6_186 ();
 sg13cmos5l_fill_2 FILLER_6_190 ();
 sg13cmos5l_decap_4 FILLER_6_27 ();
 sg13cmos5l_fill_1 FILLER_6_31 ();
 sg13cmos5l_fill_1 FILLER_6_4 ();
 sg13cmos5l_decap_4 FILLER_6_50 ();
 sg13cmos5l_fill_2 FILLER_6_62 ();
 sg13cmos5l_fill_1 FILLER_6_64 ();
 sg13cmos5l_fill_2 FILLER_6_68 ();
 sg13cmos5l_fill_1 FILLER_6_70 ();
 sg13cmos5l_fill_1 FILLER_6_77 ();
 sg13cmos5l_fill_1 FILLER_6_81 ();
 sg13cmos5l_fill_2 FILLER_6_85 ();
 sg13cmos5l_fill_1 FILLER_6_87 ();
 sg13cmos5l_fill_2 FILLER_6_94 ();
 sg13cmos5l_fill_1 FILLER_6_96 ();
 sg13cmos5l_fill_2 FILLER_7_0 ();
 sg13cmos5l_decap_8 FILLER_7_122 ();
 sg13cmos5l_decap_8 FILLER_7_129 ();
 sg13cmos5l_fill_1 FILLER_7_136 ();
 sg13cmos5l_fill_2 FILLER_7_156 ();
 sg13cmos5l_fill_1 FILLER_7_158 ();
 sg13cmos5l_decap_8 FILLER_7_171 ();
 sg13cmos5l_decap_8 FILLER_7_178 ();
 sg13cmos5l_decap_4 FILLER_7_18 ();
 sg13cmos5l_fill_2 FILLER_7_185 ();
 sg13cmos5l_fill_1 FILLER_7_187 ();
 sg13cmos5l_fill_1 FILLER_7_22 ();
 sg13cmos5l_decap_4 FILLER_7_27 ();
 sg13cmos5l_fill_1 FILLER_7_31 ();
 sg13cmos5l_decap_8 FILLER_7_56 ();
 sg13cmos5l_fill_1 FILLER_7_63 ();
 sg13cmos5l_decap_4 FILLER_7_72 ();
 sg13cmos5l_decap_8 FILLER_7_85 ();
 sg13cmos5l_decap_4 FILLER_7_92 ();
 sg13cmos5l_fill_1 FILLER_7_96 ();
 sg13cmos5l_fill_2 FILLER_8_100 ();
 sg13cmos5l_fill_2 FILLER_8_105 ();
 sg13cmos5l_fill_1 FILLER_8_118 ();
 sg13cmos5l_decap_4 FILLER_8_122 ();
 sg13cmos5l_fill_2 FILLER_8_126 ();
 sg13cmos5l_decap_4 FILLER_8_131 ();
 sg13cmos5l_fill_1 FILLER_8_135 ();
 sg13cmos5l_decap_8 FILLER_8_148 ();
 sg13cmos5l_decap_8 FILLER_8_155 ();
 sg13cmos5l_decap_8 FILLER_8_162 ();
 sg13cmos5l_decap_8 FILLER_8_169 ();
 sg13cmos5l_decap_8 FILLER_8_176 ();
 sg13cmos5l_decap_4 FILLER_8_18 ();
 sg13cmos5l_decap_8 FILLER_8_183 ();
 sg13cmos5l_fill_2 FILLER_8_190 ();
 sg13cmos5l_fill_1 FILLER_8_22 ();
 sg13cmos5l_decap_8 FILLER_8_27 ();
 sg13cmos5l_decap_8 FILLER_8_42 ();
 sg13cmos5l_decap_4 FILLER_8_49 ();
 sg13cmos5l_fill_1 FILLER_8_58 ();
 sg13cmos5l_decap_8 FILLER_8_72 ();
 sg13cmos5l_decap_4 FILLER_8_79 ();
 sg13cmos5l_fill_1 FILLER_8_92 ();
 sg13cmos5l_fill_1 FILLER_8_96 ();
 sg13cmos5l_fill_2 FILLER_9_0 ();
 sg13cmos5l_decap_4 FILLER_9_104 ();
 sg13cmos5l_decap_4 FILLER_9_113 ();
 sg13cmos5l_decap_8 FILLER_9_122 ();
 sg13cmos5l_decap_8 FILLER_9_129 ();
 sg13cmos5l_fill_1 FILLER_9_14 ();
 sg13cmos5l_fill_2 FILLER_9_141 ();
 sg13cmos5l_decap_8 FILLER_9_152 ();
 sg13cmos5l_decap_8 FILLER_9_159 ();
 sg13cmos5l_decap_8 FILLER_9_166 ();
 sg13cmos5l_decap_8 FILLER_9_173 ();
 sg13cmos5l_decap_4 FILLER_9_18 ();
 sg13cmos5l_decap_8 FILLER_9_180 ();
 sg13cmos5l_decap_4 FILLER_9_187 ();
 sg13cmos5l_fill_1 FILLER_9_191 ();
 sg13cmos5l_fill_1 FILLER_9_22 ();
 sg13cmos5l_decap_8 FILLER_9_26 ();
 sg13cmos5l_decap_8 FILLER_9_39 ();
 sg13cmos5l_decap_8 FILLER_9_46 ();
 sg13cmos5l_decap_4 FILLER_9_53 ();
 sg13cmos5l_fill_1 FILLER_9_57 ();
 sg13cmos5l_decap_8 FILLER_9_63 ();
 sg13cmos5l_decap_8 FILLER_9_70 ();
 sg13cmos5l_fill_1 FILLER_9_77 ();
 sg13cmos5l_decap_8 FILLER_9_90 ();
 sg13cmos5l_decap_8 FILLER_9_97 ();
 sg13cmos5l_mux2_1 _41_ (.A0(\inv_wire[111] ),
    .A1(\inv_wire[119] ),
    .S(net13),
    .X(_00_));
 sg13cmos5l_mux2_1 _42_ (.A0(\inv_wire[127] ),
    .A1(\inv_wire[135] ),
    .S(net12),
    .X(_01_));
 sg13cmos5l_mux2_1 _43_ (.A0(\inv_wire[115] ),
    .A1(\inv_wire[123] ),
    .S(net12),
    .X(_02_));
 sg13cmos5l_mux2_1 _44_ (.A0(\inv_wire[131] ),
    .A1(\inv_wire[139] ),
    .S(net12),
    .X(_03_));
 sg13cmos5l_mux4_1 _45_ (.S0(net6),
    .A0(_00_),
    .A1(_01_),
    .A2(_02_),
    .A3(_03_),
    .S1(net4),
    .X(_04_));
 sg13cmos5l_nand2_1 _46_ (.Y(_05_),
    .A(net7),
    .B(net8));
 sg13cmos5l_nor2_1 _47_ (.A(_04_),
    .B(_05_),
    .Y(_06_));
 sg13cmos5l_nand2b_1 _48_ (.Y(_07_),
    .B(net10),
    .A_N(\inv_wire[87] ));
 sg13cmos5l_o21ai_1 _49_ (.B1(_07_),
    .Y(_08_),
    .A1(net10),
    .A2(\inv_wire[79] ));
 sg13cmos5l_nand2b_1 _50_ (.Y(_09_),
    .B(net10),
    .A_N(\inv_wire[103] ));
 sg13cmos5l_o21ai_1 _51_ (.B1(_09_),
    .Y(_10_),
    .A1(net10),
    .A2(\inv_wire[95] ));
 sg13cmos5l_nand2b_1 _52_ (.Y(_11_),
    .B(net10),
    .A_N(\inv_wire[91] ));
 sg13cmos5l_o21ai_1 _53_ (.B1(_11_),
    .Y(_12_),
    .A1(net10),
    .A2(\inv_wire[83] ));
 sg13cmos5l_nand2b_1 _54_ (.Y(_13_),
    .B(net11),
    .A_N(\inv_wire[107] ));
 sg13cmos5l_o21ai_1 _55_ (.B1(_13_),
    .Y(_14_),
    .A1(net10),
    .A2(\inv_wire[99] ));
 sg13cmos5l_mux4_1 _56_ (.S0(net6),
    .A0(_08_),
    .A1(_10_),
    .A2(_12_),
    .A3(_14_),
    .S1(net4),
    .X(_15_));
 sg13cmos5l_nor2b_1 _57_ (.A(net7),
    .B_N(net8),
    .Y(_16_));
 sg13cmos5l_nand2b_1 _58_ (.Y(_17_),
    .B(net12),
    .A_N(\inv_wire[55] ));
 sg13cmos5l_o21ai_1 _59_ (.B1(_17_),
    .Y(_18_),
    .A1(net13),
    .A2(\inv_wire[47] ));
 sg13cmos5l_nand2b_1 _60_ (.Y(_19_),
    .B(net12),
    .A_N(\inv_wire[59] ));
 sg13cmos5l_o21ai_1 _61_ (.B1(_19_),
    .Y(_20_),
    .A1(net12),
    .A2(\inv_wire[51] ));
 sg13cmos5l_nand2b_1 _62_ (.Y(_21_),
    .B(net12),
    .A_N(\inv_wire[71] ));
 sg13cmos5l_o21ai_1 _63_ (.B1(_21_),
    .Y(_22_),
    .A1(net13),
    .A2(\inv_wire[63] ));
 sg13cmos5l_nand2b_1 _64_ (.Y(_23_),
    .B(net12),
    .A_N(\inv_wire[75] ));
 sg13cmos5l_o21ai_1 _65_ (.B1(_23_),
    .Y(_24_),
    .A1(net13),
    .A2(\inv_wire[67] ));
 sg13cmos5l_mux4_1 _66_ (.S0(net4),
    .A0(_18_),
    .A1(_20_),
    .A2(_22_),
    .A3(_24_),
    .S1(net6),
    .X(_25_));
 sg13cmos5l_nor2b_1 _67_ (.A(net8),
    .B_N(net7),
    .Y(_26_));
 sg13cmos5l_mux2_1 _68_ (.A0(\inv_wire[15] ),
    .A1(\inv_wire[23] ),
    .S(net10),
    .X(_27_));
 sg13cmos5l_mux2_1 _69_ (.A0(\inv_wire[31] ),
    .A1(\inv_wire[39] ),
    .S(net11),
    .X(_28_));
 sg13cmos5l_mux2_1 _70_ (.A0(\inv_wire[19] ),
    .A1(\inv_wire[27] ),
    .S(net11),
    .X(_29_));
 sg13cmos5l_mux2_1 _71_ (.A0(\inv_wire[35] ),
    .A1(\inv_wire[43] ),
    .S(net11),
    .X(_30_));
 sg13cmos5l_mux4_1 _72_ (.S0(net6),
    .A0(_27_),
    .A1(_28_),
    .A2(_29_),
    .A3(_30_),
    .S1(net4),
    .X(_31_));
 sg13cmos5l_nor3_1 _73_ (.A(net7),
    .B(net8),
    .C(_31_),
    .Y(_32_));
 sg13cmos5l_a221oi_1 _74_ (.B2(_26_),
    .C1(_32_),
    .B1(_25_),
    .A1(_15_),
    .Y(_33_),
    .A2(_16_));
 sg13cmos5l_nor2b_1 _75_ (.A(_06_),
    .B_N(_33_),
    .Y(\ff_wire[0] ));
 sg13cmos5l_inv_1 _76_ (.Y(_34_),
    .A(net1));
 sg13cmos5l_nor2_1 _77_ (.A(_34_),
    .B(_06_),
    .Y(_35_));
 sg13cmos5l_and2_1 _78_ (.A(_33_),
    .B(_35_),
    .X(\inv_wire[0] ));
 sg13cmos5l_nor4_1 _79_ (.A(_34_),
    .B(net2),
    .C(net3),
    .D(_06_),
    .Y(_36_));
 sg13cmos5l_mux2_1 _80_ (.A0(\ff_wire[2] ),
    .A1(\ff_wire[3] ),
    .S(net2),
    .X(_37_));
 sg13cmos5l_nand2_1 _81_ (.Y(_38_),
    .A(net3),
    .B(_37_));
 sg13cmos5l_nand3b_1 _82_ (.B(net2),
    .C(\ff_wire[1] ),
    .Y(_39_),
    .A_N(net3));
 sg13cmos5l_a21oi_1 _83_ (.A1(_38_),
    .A2(_39_),
    .Y(_40_),
    .B1(_34_));
 sg13cmos5l_a21o_1 _84_ (.A2(_36_),
    .A1(_33_),
    .B1(_40_),
    .X(net9));
 sg13cmos5l_buf_1 fanout10 (.A(net11),
    .X(net10));
 sg13cmos5l_buf_1 fanout11 (.A(net5),
    .X(net11));
 sg13cmos5l_buf_1 fanout12 (.A(net13),
    .X(net12));
 sg13cmos5l_buf_1 fanout13 (.A(net5),
    .X(net13));
 sg13cmos5l_inv_1 \genblk3[0].i_inv  (.Y(\inv_wire[1] ),
    .A(\inv_wire[0] ));
 sg13cmos5l_inv_1 \genblk3[100].i_inv  (.Y(\inv_wire[101] ),
    .A(\inv_wire[100] ));
 sg13cmos5l_inv_1 \genblk3[101].i_inv  (.Y(\inv_wire[102] ),
    .A(\inv_wire[101] ));
 sg13cmos5l_inv_1 \genblk3[102].i_inv  (.Y(\inv_wire[103] ),
    .A(\inv_wire[102] ));
 sg13cmos5l_inv_1 \genblk3[103].i_inv  (.Y(\inv_wire[104] ),
    .A(\inv_wire[103] ));
 sg13cmos5l_inv_1 \genblk3[104].i_inv  (.Y(\inv_wire[105] ),
    .A(\inv_wire[104] ));
 sg13cmos5l_inv_1 \genblk3[105].i_inv  (.Y(\inv_wire[106] ),
    .A(\inv_wire[105] ));
 sg13cmos5l_inv_1 \genblk3[106].i_inv  (.Y(\inv_wire[107] ),
    .A(\inv_wire[106] ));
 sg13cmos5l_inv_1 \genblk3[107].i_inv  (.Y(\inv_wire[108] ),
    .A(\inv_wire[107] ));
 sg13cmos5l_inv_1 \genblk3[108].i_inv  (.Y(\inv_wire[109] ),
    .A(\inv_wire[108] ));
 sg13cmos5l_inv_1 \genblk3[109].i_inv  (.Y(\inv_wire[110] ),
    .A(\inv_wire[109] ));
 sg13cmos5l_inv_1 \genblk3[10].i_inv  (.Y(\inv_wire[11] ),
    .A(\inv_wire[10] ));
 sg13cmos5l_inv_1 \genblk3[110].i_inv  (.Y(\inv_wire[111] ),
    .A(\inv_wire[110] ));
 sg13cmos5l_inv_1 \genblk3[111].i_inv  (.Y(\inv_wire[112] ),
    .A(\inv_wire[111] ));
 sg13cmos5l_inv_1 \genblk3[112].i_inv  (.Y(\inv_wire[113] ),
    .A(\inv_wire[112] ));
 sg13cmos5l_inv_1 \genblk3[113].i_inv  (.Y(\inv_wire[114] ),
    .A(\inv_wire[113] ));
 sg13cmos5l_inv_1 \genblk3[114].i_inv  (.Y(\inv_wire[115] ),
    .A(\inv_wire[114] ));
 sg13cmos5l_inv_1 \genblk3[115].i_inv  (.Y(\inv_wire[116] ),
    .A(\inv_wire[115] ));
 sg13cmos5l_inv_1 \genblk3[116].i_inv  (.Y(\inv_wire[117] ),
    .A(\inv_wire[116] ));
 sg13cmos5l_inv_1 \genblk3[117].i_inv  (.Y(\inv_wire[118] ),
    .A(\inv_wire[117] ));
 sg13cmos5l_inv_1 \genblk3[118].i_inv  (.Y(\inv_wire[119] ),
    .A(\inv_wire[118] ));
 sg13cmos5l_inv_1 \genblk3[119].i_inv  (.Y(\inv_wire[120] ),
    .A(\inv_wire[119] ));
 sg13cmos5l_inv_1 \genblk3[11].i_inv  (.Y(\inv_wire[12] ),
    .A(\inv_wire[11] ));
 sg13cmos5l_inv_1 \genblk3[120].i_inv  (.Y(\inv_wire[121] ),
    .A(\inv_wire[120] ));
 sg13cmos5l_inv_1 \genblk3[121].i_inv  (.Y(\inv_wire[122] ),
    .A(\inv_wire[121] ));
 sg13cmos5l_inv_1 \genblk3[122].i_inv  (.Y(\inv_wire[123] ),
    .A(\inv_wire[122] ));
 sg13cmos5l_inv_1 \genblk3[123].i_inv  (.Y(\inv_wire[124] ),
    .A(\inv_wire[123] ));
 sg13cmos5l_inv_1 \genblk3[124].i_inv  (.Y(\inv_wire[125] ),
    .A(\inv_wire[124] ));
 sg13cmos5l_inv_1 \genblk3[125].i_inv  (.Y(\inv_wire[126] ),
    .A(\inv_wire[125] ));
 sg13cmos5l_inv_1 \genblk3[126].i_inv  (.Y(\inv_wire[127] ),
    .A(\inv_wire[126] ));
 sg13cmos5l_inv_1 \genblk3[127].i_inv  (.Y(\inv_wire[128] ),
    .A(\inv_wire[127] ));
 sg13cmos5l_inv_1 \genblk3[128].i_inv  (.Y(\inv_wire[129] ),
    .A(\inv_wire[128] ));
 sg13cmos5l_inv_1 \genblk3[129].i_inv  (.Y(\inv_wire[130] ),
    .A(\inv_wire[129] ));
 sg13cmos5l_inv_1 \genblk3[12].i_inv  (.Y(\inv_wire[13] ),
    .A(\inv_wire[12] ));
 sg13cmos5l_inv_1 \genblk3[130].i_inv  (.Y(\inv_wire[131] ),
    .A(\inv_wire[130] ));
 sg13cmos5l_inv_1 \genblk3[131].i_inv  (.Y(\inv_wire[132] ),
    .A(\inv_wire[131] ));
 sg13cmos5l_inv_1 \genblk3[132].i_inv  (.Y(\inv_wire[133] ),
    .A(\inv_wire[132] ));
 sg13cmos5l_inv_1 \genblk3[133].i_inv  (.Y(\inv_wire[134] ),
    .A(\inv_wire[133] ));
 sg13cmos5l_inv_1 \genblk3[134].i_inv  (.Y(\inv_wire[135] ),
    .A(\inv_wire[134] ));
 sg13cmos5l_inv_1 \genblk3[135].i_inv  (.Y(\inv_wire[136] ),
    .A(\inv_wire[135] ));
 sg13cmos5l_inv_1 \genblk3[136].i_inv  (.Y(\inv_wire[137] ),
    .A(\inv_wire[136] ));
 sg13cmos5l_inv_1 \genblk3[137].i_inv  (.Y(\inv_wire[138] ),
    .A(\inv_wire[137] ));
 sg13cmos5l_inv_1 \genblk3[138].i_inv  (.Y(\inv_wire[139] ),
    .A(\inv_wire[138] ));
 sg13cmos5l_inv_1 \genblk3[13].i_inv  (.Y(\inv_wire[14] ),
    .A(\inv_wire[13] ));
 sg13cmos5l_inv_1 \genblk3[14].i_inv  (.Y(\inv_wire[15] ),
    .A(\inv_wire[14] ));
 sg13cmos5l_inv_1 \genblk3[15].i_inv  (.Y(\inv_wire[16] ),
    .A(\inv_wire[15] ));
 sg13cmos5l_inv_1 \genblk3[16].i_inv  (.Y(\inv_wire[17] ),
    .A(\inv_wire[16] ));
 sg13cmos5l_inv_1 \genblk3[17].i_inv  (.Y(\inv_wire[18] ),
    .A(\inv_wire[17] ));
 sg13cmos5l_inv_1 \genblk3[18].i_inv  (.Y(\inv_wire[19] ),
    .A(\inv_wire[18] ));
 sg13cmos5l_inv_1 \genblk3[19].i_inv  (.Y(\inv_wire[20] ),
    .A(\inv_wire[19] ));
 sg13cmos5l_inv_1 \genblk3[1].i_inv  (.Y(\inv_wire[2] ),
    .A(\inv_wire[1] ));
 sg13cmos5l_inv_1 \genblk3[20].i_inv  (.Y(\inv_wire[21] ),
    .A(\inv_wire[20] ));
 sg13cmos5l_inv_1 \genblk3[21].i_inv  (.Y(\inv_wire[22] ),
    .A(\inv_wire[21] ));
 sg13cmos5l_inv_1 \genblk3[22].i_inv  (.Y(\inv_wire[23] ),
    .A(\inv_wire[22] ));
 sg13cmos5l_inv_1 \genblk3[23].i_inv  (.Y(\inv_wire[24] ),
    .A(\inv_wire[23] ));
 sg13cmos5l_inv_1 \genblk3[24].i_inv  (.Y(\inv_wire[25] ),
    .A(\inv_wire[24] ));
 sg13cmos5l_inv_1 \genblk3[25].i_inv  (.Y(\inv_wire[26] ),
    .A(\inv_wire[25] ));
 sg13cmos5l_inv_1 \genblk3[26].i_inv  (.Y(\inv_wire[27] ),
    .A(\inv_wire[26] ));
 sg13cmos5l_inv_1 \genblk3[27].i_inv  (.Y(\inv_wire[28] ),
    .A(\inv_wire[27] ));
 sg13cmos5l_inv_1 \genblk3[28].i_inv  (.Y(\inv_wire[29] ),
    .A(\inv_wire[28] ));
 sg13cmos5l_inv_1 \genblk3[29].i_inv  (.Y(\inv_wire[30] ),
    .A(\inv_wire[29] ));
 sg13cmos5l_inv_1 \genblk3[2].i_inv  (.Y(\inv_wire[3] ),
    .A(\inv_wire[2] ));
 sg13cmos5l_inv_1 \genblk3[30].i_inv  (.Y(\inv_wire[31] ),
    .A(\inv_wire[30] ));
 sg13cmos5l_inv_1 \genblk3[31].i_inv  (.Y(\inv_wire[32] ),
    .A(\inv_wire[31] ));
 sg13cmos5l_inv_1 \genblk3[32].i_inv  (.Y(\inv_wire[33] ),
    .A(\inv_wire[32] ));
 sg13cmos5l_inv_1 \genblk3[33].i_inv  (.Y(\inv_wire[34] ),
    .A(\inv_wire[33] ));
 sg13cmos5l_inv_1 \genblk3[34].i_inv  (.Y(\inv_wire[35] ),
    .A(\inv_wire[34] ));
 sg13cmos5l_inv_1 \genblk3[35].i_inv  (.Y(\inv_wire[36] ),
    .A(\inv_wire[35] ));
 sg13cmos5l_inv_1 \genblk3[36].i_inv  (.Y(\inv_wire[37] ),
    .A(\inv_wire[36] ));
 sg13cmos5l_inv_1 \genblk3[37].i_inv  (.Y(\inv_wire[38] ),
    .A(\inv_wire[37] ));
 sg13cmos5l_inv_1 \genblk3[38].i_inv  (.Y(\inv_wire[39] ),
    .A(\inv_wire[38] ));
 sg13cmos5l_inv_1 \genblk3[39].i_inv  (.Y(\inv_wire[40] ),
    .A(\inv_wire[39] ));
 sg13cmos5l_inv_1 \genblk3[3].i_inv  (.Y(\inv_wire[4] ),
    .A(\inv_wire[3] ));
 sg13cmos5l_inv_1 \genblk3[40].i_inv  (.Y(\inv_wire[41] ),
    .A(\inv_wire[40] ));
 sg13cmos5l_inv_1 \genblk3[41].i_inv  (.Y(\inv_wire[42] ),
    .A(\inv_wire[41] ));
 sg13cmos5l_inv_1 \genblk3[42].i_inv  (.Y(\inv_wire[43] ),
    .A(\inv_wire[42] ));
 sg13cmos5l_inv_1 \genblk3[43].i_inv  (.Y(\inv_wire[44] ),
    .A(\inv_wire[43] ));
 sg13cmos5l_inv_1 \genblk3[44].i_inv  (.Y(\inv_wire[45] ),
    .A(\inv_wire[44] ));
 sg13cmos5l_inv_1 \genblk3[45].i_inv  (.Y(\inv_wire[46] ),
    .A(\inv_wire[45] ));
 sg13cmos5l_inv_1 \genblk3[46].i_inv  (.Y(\inv_wire[47] ),
    .A(\inv_wire[46] ));
 sg13cmos5l_inv_1 \genblk3[47].i_inv  (.Y(\inv_wire[48] ),
    .A(\inv_wire[47] ));
 sg13cmos5l_inv_1 \genblk3[48].i_inv  (.Y(\inv_wire[49] ),
    .A(\inv_wire[48] ));
 sg13cmos5l_inv_1 \genblk3[49].i_inv  (.Y(\inv_wire[50] ),
    .A(\inv_wire[49] ));
 sg13cmos5l_inv_1 \genblk3[4].i_inv  (.Y(\inv_wire[5] ),
    .A(\inv_wire[4] ));
 sg13cmos5l_inv_1 \genblk3[50].i_inv  (.Y(\inv_wire[51] ),
    .A(\inv_wire[50] ));
 sg13cmos5l_inv_1 \genblk3[51].i_inv  (.Y(\inv_wire[52] ),
    .A(\inv_wire[51] ));
 sg13cmos5l_inv_1 \genblk3[52].i_inv  (.Y(\inv_wire[53] ),
    .A(\inv_wire[52] ));
 sg13cmos5l_inv_1 \genblk3[53].i_inv  (.Y(\inv_wire[54] ),
    .A(\inv_wire[53] ));
 sg13cmos5l_inv_1 \genblk3[54].i_inv  (.Y(\inv_wire[55] ),
    .A(\inv_wire[54] ));
 sg13cmos5l_inv_1 \genblk3[55].i_inv  (.Y(\inv_wire[56] ),
    .A(\inv_wire[55] ));
 sg13cmos5l_inv_1 \genblk3[56].i_inv  (.Y(\inv_wire[57] ),
    .A(\inv_wire[56] ));
 sg13cmos5l_inv_1 \genblk3[57].i_inv  (.Y(\inv_wire[58] ),
    .A(\inv_wire[57] ));
 sg13cmos5l_inv_1 \genblk3[58].i_inv  (.Y(\inv_wire[59] ),
    .A(\inv_wire[58] ));
 sg13cmos5l_inv_1 \genblk3[59].i_inv  (.Y(\inv_wire[60] ),
    .A(\inv_wire[59] ));
 sg13cmos5l_inv_1 \genblk3[5].i_inv  (.Y(\inv_wire[6] ),
    .A(\inv_wire[5] ));
 sg13cmos5l_inv_1 \genblk3[60].i_inv  (.Y(\inv_wire[61] ),
    .A(\inv_wire[60] ));
 sg13cmos5l_inv_1 \genblk3[61].i_inv  (.Y(\inv_wire[62] ),
    .A(\inv_wire[61] ));
 sg13cmos5l_inv_1 \genblk3[62].i_inv  (.Y(\inv_wire[63] ),
    .A(\inv_wire[62] ));
 sg13cmos5l_inv_1 \genblk3[63].i_inv  (.Y(\inv_wire[64] ),
    .A(\inv_wire[63] ));
 sg13cmos5l_inv_1 \genblk3[64].i_inv  (.Y(\inv_wire[65] ),
    .A(\inv_wire[64] ));
 sg13cmos5l_inv_1 \genblk3[65].i_inv  (.Y(\inv_wire[66] ),
    .A(\inv_wire[65] ));
 sg13cmos5l_inv_1 \genblk3[66].i_inv  (.Y(\inv_wire[67] ),
    .A(\inv_wire[66] ));
 sg13cmos5l_inv_1 \genblk3[67].i_inv  (.Y(\inv_wire[68] ),
    .A(\inv_wire[67] ));
 sg13cmos5l_inv_1 \genblk3[68].i_inv  (.Y(\inv_wire[69] ),
    .A(\inv_wire[68] ));
 sg13cmos5l_inv_1 \genblk3[69].i_inv  (.Y(\inv_wire[70] ),
    .A(\inv_wire[69] ));
 sg13cmos5l_inv_1 \genblk3[6].i_inv  (.Y(\inv_wire[7] ),
    .A(\inv_wire[6] ));
 sg13cmos5l_inv_1 \genblk3[70].i_inv  (.Y(\inv_wire[71] ),
    .A(\inv_wire[70] ));
 sg13cmos5l_inv_1 \genblk3[71].i_inv  (.Y(\inv_wire[72] ),
    .A(\inv_wire[71] ));
 sg13cmos5l_inv_1 \genblk3[72].i_inv  (.Y(\inv_wire[73] ),
    .A(\inv_wire[72] ));
 sg13cmos5l_inv_1 \genblk3[73].i_inv  (.Y(\inv_wire[74] ),
    .A(\inv_wire[73] ));
 sg13cmos5l_inv_1 \genblk3[74].i_inv  (.Y(\inv_wire[75] ),
    .A(\inv_wire[74] ));
 sg13cmos5l_inv_1 \genblk3[75].i_inv  (.Y(\inv_wire[76] ),
    .A(\inv_wire[75] ));
 sg13cmos5l_inv_1 \genblk3[76].i_inv  (.Y(\inv_wire[77] ),
    .A(\inv_wire[76] ));
 sg13cmos5l_inv_1 \genblk3[77].i_inv  (.Y(\inv_wire[78] ),
    .A(\inv_wire[77] ));
 sg13cmos5l_inv_1 \genblk3[78].i_inv  (.Y(\inv_wire[79] ),
    .A(\inv_wire[78] ));
 sg13cmos5l_inv_1 \genblk3[79].i_inv  (.Y(\inv_wire[80] ),
    .A(\inv_wire[79] ));
 sg13cmos5l_inv_1 \genblk3[7].i_inv  (.Y(\inv_wire[8] ),
    .A(\inv_wire[7] ));
 sg13cmos5l_inv_1 \genblk3[80].i_inv  (.Y(\inv_wire[81] ),
    .A(\inv_wire[80] ));
 sg13cmos5l_inv_1 \genblk3[81].i_inv  (.Y(\inv_wire[82] ),
    .A(\inv_wire[81] ));
 sg13cmos5l_inv_1 \genblk3[82].i_inv  (.Y(\inv_wire[83] ),
    .A(\inv_wire[82] ));
 sg13cmos5l_inv_1 \genblk3[83].i_inv  (.Y(\inv_wire[84] ),
    .A(\inv_wire[83] ));
 sg13cmos5l_inv_1 \genblk3[84].i_inv  (.Y(\inv_wire[85] ),
    .A(\inv_wire[84] ));
 sg13cmos5l_inv_1 \genblk3[85].i_inv  (.Y(\inv_wire[86] ),
    .A(\inv_wire[85] ));
 sg13cmos5l_inv_1 \genblk3[86].i_inv  (.Y(\inv_wire[87] ),
    .A(\inv_wire[86] ));
 sg13cmos5l_inv_1 \genblk3[87].i_inv  (.Y(\inv_wire[88] ),
    .A(\inv_wire[87] ));
 sg13cmos5l_inv_1 \genblk3[88].i_inv  (.Y(\inv_wire[89] ),
    .A(\inv_wire[88] ));
 sg13cmos5l_inv_1 \genblk3[89].i_inv  (.Y(\inv_wire[90] ),
    .A(\inv_wire[89] ));
 sg13cmos5l_inv_1 \genblk3[8].i_inv  (.Y(\inv_wire[9] ),
    .A(\inv_wire[8] ));
 sg13cmos5l_inv_1 \genblk3[90].i_inv  (.Y(\inv_wire[91] ),
    .A(\inv_wire[90] ));
 sg13cmos5l_inv_1 \genblk3[91].i_inv  (.Y(\inv_wire[92] ),
    .A(\inv_wire[91] ));
 sg13cmos5l_inv_1 \genblk3[92].i_inv  (.Y(\inv_wire[93] ),
    .A(\inv_wire[92] ));
 sg13cmos5l_inv_1 \genblk3[93].i_inv  (.Y(\inv_wire[94] ),
    .A(\inv_wire[93] ));
 sg13cmos5l_inv_1 \genblk3[94].i_inv  (.Y(\inv_wire[95] ),
    .A(\inv_wire[94] ));
 sg13cmos5l_inv_1 \genblk3[95].i_inv  (.Y(\inv_wire[96] ),
    .A(\inv_wire[95] ));
 sg13cmos5l_inv_1 \genblk3[96].i_inv  (.Y(\inv_wire[97] ),
    .A(\inv_wire[96] ));
 sg13cmos5l_inv_1 \genblk3[97].i_inv  (.Y(\inv_wire[98] ),
    .A(\inv_wire[97] ));
 sg13cmos5l_inv_1 \genblk3[98].i_inv  (.Y(\inv_wire[99] ),
    .A(\inv_wire[98] ));
 sg13cmos5l_inv_1 \genblk3[99].i_inv  (.Y(\inv_wire[100] ),
    .A(\inv_wire[99] ));
 sg13cmos5l_inv_1 \genblk3[9].i_inv  (.Y(\inv_wire[10] ),
    .A(\inv_wire[9] ));
 sg13cmos5l_dfrbp_1 \genblk4[1].i_ff  (.RESET_B(net1),
    .D(\ff_wire[1] ),
    .Q_N(\ff_wire[1] ),
    .CLK(\ff_wire[0] ));
 sg13cmos5l_dfrbp_1 \genblk4[2].i_ff  (.RESET_B(net1),
    .D(\ff_wire[2] ),
    .Q_N(\ff_wire[2] ),
    .CLK(\ff_wire[1] ));
 sg13cmos5l_dfrbp_1 \genblk4[3].i_ff  (.RESET_B(net1),
    .D(\ff_wire[3] ),
    .Q_N(\ff_wire[3] ),
    .CLK(\ff_wire[2] ));
 sg13cmos5l_buf_1 input1 (.A(enable),
    .X(net1));
 sg13cmos5l_buf_1 input2 (.A(ffsel[0]),
    .X(net2));
 sg13cmos5l_buf_1 input3 (.A(ffsel[1]),
    .X(net3));
 sg13cmos5l_buf_1 input4 (.A(invsel[0]),
    .X(net4));
 sg13cmos5l_buf_1 input5 (.A(invsel[1]),
    .X(net5));
 sg13cmos5l_buf_1 input6 (.A(invsel[2]),
    .X(net6));
 sg13cmos5l_buf_1 input7 (.A(invsel[3]),
    .X(net7));
 sg13cmos5l_buf_1 input8 (.A(invsel[4]),
    .X(net8));
 sg13cmos5l_buf_1 output9 (.A(net9),
    .X(osc));
endmodule
