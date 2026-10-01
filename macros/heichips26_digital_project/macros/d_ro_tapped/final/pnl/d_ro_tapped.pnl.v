module d_ro_tapped (enable,
    osc,
    VPWR,
    VGND,
    ffsel,
    invsel);
 input enable;
 output osc;
 inout VPWR;
 inout VGND;
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

 sg13cmos5l_decap_8 FILLER_0_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_154 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_161 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_168 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_175 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_182 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_189 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_191 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_125 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_127 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_154 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_161 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_168 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_175 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_10_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_182 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_189 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_191 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_65 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_67 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_71 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_102 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_108 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_110 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_116 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_144 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_151 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_158 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_165 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_17 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_31 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_55 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_62 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_67 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_72 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_76 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_87 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_102 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_121 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_12_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_12_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_142 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_156 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_163 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_170 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_177 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_12_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_184 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_12_191 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_12_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_12_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_12_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_67 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_74 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_88 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_95 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_102 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_109 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_11 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_116 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_137 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_144 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_151 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_158 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_165 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_25 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_32 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_39 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_46 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_53 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_60 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_67 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_74 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_88 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_95 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_11 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_111 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_125 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_139 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_153 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_160 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_167 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_174 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_181 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_2_188 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_25 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_32 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_39 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_46 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_53 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_62 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_69 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_76 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_111 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_125 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_139 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_153 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_160 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_167 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_174 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_181 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_3_188 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_3_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_103 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_110 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_12 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_120 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_127 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_134 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_141 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_148 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_162 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_169 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_176 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_183 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_23 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_31 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_64 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_71 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_8 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_151 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_158 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_165 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_2 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_5_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_31 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_45 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_50 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_54 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_61 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_80 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_107 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_114 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_129 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_136 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_6_150 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_157 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_165 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_17 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_6_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_6_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_31 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_6_50 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_62 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_64 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_68 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_85 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_87 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_94 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_129 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_136 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_156 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_158 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_171 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_178 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_7_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_185 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_187 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_7_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_31 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_7_72 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_85 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_7_92 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_100 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_148 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_162 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_169 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_176 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_183 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_190 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_58 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_72 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_79 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_92 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_113 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_129 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_141 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_152 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_159 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_166 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_173 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_180 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_187 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_191 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_22 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_39 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_46 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_53 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_57 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _41_ (.A0(\inv_wire[111] ),
    .A1(\inv_wire[119] ),
    .S(net13),
    .X(_00_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _42_ (.A0(\inv_wire[127] ),
    .A1(\inv_wire[135] ),
    .S(net12),
    .X(_01_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _43_ (.A0(\inv_wire[115] ),
    .A1(\inv_wire[123] ),
    .S(net12),
    .X(_02_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _44_ (.A0(\inv_wire[131] ),
    .A1(\inv_wire[139] ),
    .S(net12),
    .X(_03_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux4_1 _45_ (.S0(net6),
    .A0(_00_),
    .A1(_01_),
    .A2(_02_),
    .A3(_03_),
    .S1(net4),
    .X(_04_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand2_1 _46_ (.Y(_05_),
    .A(net7),
    .B(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor2_1 _47_ (.A(_04_),
    .B(_05_),
    .Y(_06_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand2b_1 _48_ (.Y(_07_),
    .B(net10),
    .A_N(\inv_wire[87] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _49_ (.B1(_07_),
    .VDD(VPWR),
    .Y(_08_),
    .VSS(VGND),
    .A1(net10),
    .A2(\inv_wire[79] ));
 sg13cmos5l_nand2b_1 _50_ (.Y(_09_),
    .B(net10),
    .A_N(\inv_wire[103] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _51_ (.B1(_09_),
    .VDD(VPWR),
    .Y(_10_),
    .VSS(VGND),
    .A1(net10),
    .A2(\inv_wire[95] ));
 sg13cmos5l_nand2b_1 _52_ (.Y(_11_),
    .B(net10),
    .A_N(\inv_wire[91] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _53_ (.B1(_11_),
    .VDD(VPWR),
    .Y(_12_),
    .VSS(VGND),
    .A1(net10),
    .A2(\inv_wire[83] ));
 sg13cmos5l_nand2b_1 _54_ (.Y(_13_),
    .B(net11),
    .A_N(\inv_wire[107] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _55_ (.B1(_13_),
    .VDD(VPWR),
    .Y(_14_),
    .VSS(VGND),
    .A1(net10),
    .A2(\inv_wire[99] ));
 sg13cmos5l_mux4_1 _56_ (.S0(net6),
    .A0(_08_),
    .A1(_10_),
    .A2(_12_),
    .A3(_14_),
    .S1(net4),
    .X(_15_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor2b_1 _57_ (.A(net7),
    .B_N(net8),
    .Y(_16_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand2b_1 _58_ (.Y(_17_),
    .B(net12),
    .A_N(\inv_wire[55] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _59_ (.B1(_17_),
    .VDD(VPWR),
    .Y(_18_),
    .VSS(VGND),
    .A1(net13),
    .A2(\inv_wire[47] ));
 sg13cmos5l_nand2b_1 _60_ (.Y(_19_),
    .B(net12),
    .A_N(\inv_wire[59] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _61_ (.B1(_19_),
    .VDD(VPWR),
    .Y(_20_),
    .VSS(VGND),
    .A1(net12),
    .A2(\inv_wire[51] ));
 sg13cmos5l_nand2b_1 _62_ (.Y(_21_),
    .B(net12),
    .A_N(\inv_wire[71] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _63_ (.B1(_21_),
    .VDD(VPWR),
    .Y(_22_),
    .VSS(VGND),
    .A1(net13),
    .A2(\inv_wire[63] ));
 sg13cmos5l_nand2b_1 _64_ (.Y(_23_),
    .B(net12),
    .A_N(\inv_wire[75] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_o21ai_1 _65_ (.B1(_23_),
    .VDD(VPWR),
    .Y(_24_),
    .VSS(VGND),
    .A1(net13),
    .A2(\inv_wire[67] ));
 sg13cmos5l_mux4_1 _66_ (.S0(net4),
    .A0(_18_),
    .A1(_20_),
    .A2(_22_),
    .A3(_24_),
    .S1(net6),
    .X(_25_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor2b_1 _67_ (.A(net8),
    .B_N(net7),
    .Y(_26_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _68_ (.A0(\inv_wire[15] ),
    .A1(\inv_wire[23] ),
    .S(net10),
    .X(_27_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _69_ (.A0(\inv_wire[31] ),
    .A1(\inv_wire[39] ),
    .S(net11),
    .X(_28_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _70_ (.A0(\inv_wire[19] ),
    .A1(\inv_wire[27] ),
    .S(net11),
    .X(_29_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _71_ (.A0(\inv_wire[35] ),
    .A1(\inv_wire[43] ),
    .S(net11),
    .X(_30_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux4_1 _72_ (.S0(net6),
    .A0(_27_),
    .A1(_28_),
    .A2(_29_),
    .A3(_30_),
    .S1(net4),
    .X(_31_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor3_1 _73_ (.A(net7),
    .B(net8),
    .C(_31_),
    .Y(_32_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_a221oi_1 _74_ (.VDD(VPWR),
    .VSS(VGND),
    .B2(_26_),
    .C1(_32_),
    .B1(_25_),
    .A1(_15_),
    .Y(_33_),
    .A2(_16_));
 sg13cmos5l_nor2b_1 _75_ (.A(_06_),
    .B_N(_33_),
    .Y(\ff_wire[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 _76_ (.VDD(VPWR),
    .Y(_34_),
    .A(net1),
    .VSS(VGND));
 sg13cmos5l_nor2_1 _77_ (.A(_34_),
    .B(_06_),
    .Y(_35_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _78_ (.A(_33_),
    .B(_35_),
    .X(\inv_wire[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_1 _79_ (.A(_34_),
    .B(net2),
    .C(net3),
    .D(_06_),
    .Y(_36_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_mux2_1 _80_ (.A0(\ff_wire[2] ),
    .A1(\ff_wire[3] ),
    .S(net2),
    .X(_37_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand2_1 _81_ (.Y(_38_),
    .A(net3),
    .B(_37_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3b_1 _82_ (.B(net2),
    .C(\ff_wire[1] ),
    .Y(_39_),
    .VDD(VPWR),
    .VSS(VGND),
    .A_N(net3));
 sg13cmos5l_a21oi_1 _83_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_38_),
    .A2(_39_),
    .Y(_40_),
    .B1(_34_));
 sg13cmos5l_a21o_1 _84_ (.A2(_36_),
    .A1(_33_),
    .B1(_40_),
    .X(net9),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout10 (.A(net11),
    .X(net10),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout11 (.A(net5),
    .X(net11),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout12 (.A(net13),
    .X(net12),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout13 (.A(net5),
    .X(net13),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[0].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[1] ),
    .A(\inv_wire[0] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[100].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[101] ),
    .A(\inv_wire[100] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[101].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[102] ),
    .A(\inv_wire[101] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[102].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[103] ),
    .A(\inv_wire[102] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[103].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[104] ),
    .A(\inv_wire[103] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[104].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[105] ),
    .A(\inv_wire[104] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[105].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[106] ),
    .A(\inv_wire[105] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[106].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[107] ),
    .A(\inv_wire[106] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[107].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[108] ),
    .A(\inv_wire[107] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[108].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[109] ),
    .A(\inv_wire[108] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[109].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[110] ),
    .A(\inv_wire[109] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[10].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[11] ),
    .A(\inv_wire[10] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[110].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[111] ),
    .A(\inv_wire[110] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[111].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[112] ),
    .A(\inv_wire[111] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[112].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[113] ),
    .A(\inv_wire[112] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[113].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[114] ),
    .A(\inv_wire[113] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[114].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[115] ),
    .A(\inv_wire[114] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[115].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[116] ),
    .A(\inv_wire[115] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[116].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[117] ),
    .A(\inv_wire[116] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[117].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[118] ),
    .A(\inv_wire[117] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[118].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[119] ),
    .A(\inv_wire[118] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[119].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[120] ),
    .A(\inv_wire[119] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[11].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[12] ),
    .A(\inv_wire[11] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[120].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[121] ),
    .A(\inv_wire[120] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[121].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[122] ),
    .A(\inv_wire[121] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[122].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[123] ),
    .A(\inv_wire[122] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[123].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[124] ),
    .A(\inv_wire[123] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[124].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[125] ),
    .A(\inv_wire[124] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[125].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[126] ),
    .A(\inv_wire[125] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[126].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[127] ),
    .A(\inv_wire[126] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[127].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[128] ),
    .A(\inv_wire[127] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[128].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[129] ),
    .A(\inv_wire[128] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[129].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[130] ),
    .A(\inv_wire[129] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[12].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[13] ),
    .A(\inv_wire[12] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[130].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[131] ),
    .A(\inv_wire[130] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[131].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[132] ),
    .A(\inv_wire[131] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[132].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[133] ),
    .A(\inv_wire[132] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[133].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[134] ),
    .A(\inv_wire[133] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[134].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[135] ),
    .A(\inv_wire[134] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[135].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[136] ),
    .A(\inv_wire[135] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[136].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[137] ),
    .A(\inv_wire[136] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[137].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[138] ),
    .A(\inv_wire[137] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[138].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[139] ),
    .A(\inv_wire[138] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[13].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[14] ),
    .A(\inv_wire[13] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[14].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[15] ),
    .A(\inv_wire[14] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[15].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[16] ),
    .A(\inv_wire[15] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[16].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[17] ),
    .A(\inv_wire[16] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[17].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[18] ),
    .A(\inv_wire[17] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[18].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[19] ),
    .A(\inv_wire[18] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[19].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[20] ),
    .A(\inv_wire[19] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[1].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[2] ),
    .A(\inv_wire[1] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[20].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[21] ),
    .A(\inv_wire[20] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[21].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[22] ),
    .A(\inv_wire[21] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[22].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[23] ),
    .A(\inv_wire[22] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[23].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[24] ),
    .A(\inv_wire[23] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[24].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[25] ),
    .A(\inv_wire[24] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[25].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[26] ),
    .A(\inv_wire[25] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[26].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[27] ),
    .A(\inv_wire[26] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[27].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[28] ),
    .A(\inv_wire[27] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[28].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[29] ),
    .A(\inv_wire[28] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[29].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[30] ),
    .A(\inv_wire[29] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[2].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[3] ),
    .A(\inv_wire[2] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[30].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[31] ),
    .A(\inv_wire[30] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[31].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[32] ),
    .A(\inv_wire[31] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[32].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[33] ),
    .A(\inv_wire[32] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[33].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[34] ),
    .A(\inv_wire[33] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[34].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[35] ),
    .A(\inv_wire[34] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[35].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[36] ),
    .A(\inv_wire[35] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[36].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[37] ),
    .A(\inv_wire[36] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[37].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[38] ),
    .A(\inv_wire[37] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[38].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[39] ),
    .A(\inv_wire[38] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[39].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[40] ),
    .A(\inv_wire[39] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[3].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[4] ),
    .A(\inv_wire[3] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[40].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[41] ),
    .A(\inv_wire[40] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[41].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[42] ),
    .A(\inv_wire[41] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[42].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[43] ),
    .A(\inv_wire[42] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[43].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[44] ),
    .A(\inv_wire[43] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[44].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[45] ),
    .A(\inv_wire[44] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[45].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[46] ),
    .A(\inv_wire[45] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[46].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[47] ),
    .A(\inv_wire[46] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[47].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[48] ),
    .A(\inv_wire[47] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[48].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[49] ),
    .A(\inv_wire[48] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[49].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[50] ),
    .A(\inv_wire[49] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[4].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[5] ),
    .A(\inv_wire[4] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[50].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[51] ),
    .A(\inv_wire[50] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[51].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[52] ),
    .A(\inv_wire[51] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[52].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[53] ),
    .A(\inv_wire[52] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[53].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[54] ),
    .A(\inv_wire[53] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[54].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[55] ),
    .A(\inv_wire[54] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[55].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[56] ),
    .A(\inv_wire[55] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[56].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[57] ),
    .A(\inv_wire[56] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[57].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[58] ),
    .A(\inv_wire[57] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[58].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[59] ),
    .A(\inv_wire[58] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[59].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[60] ),
    .A(\inv_wire[59] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[5].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[6] ),
    .A(\inv_wire[5] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[60].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[61] ),
    .A(\inv_wire[60] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[61].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[62] ),
    .A(\inv_wire[61] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[62].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[63] ),
    .A(\inv_wire[62] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[63].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[64] ),
    .A(\inv_wire[63] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[64].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[65] ),
    .A(\inv_wire[64] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[65].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[66] ),
    .A(\inv_wire[65] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[66].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[67] ),
    .A(\inv_wire[66] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[67].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[68] ),
    .A(\inv_wire[67] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[68].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[69] ),
    .A(\inv_wire[68] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[69].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[70] ),
    .A(\inv_wire[69] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[6].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[7] ),
    .A(\inv_wire[6] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[70].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[71] ),
    .A(\inv_wire[70] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[71].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[72] ),
    .A(\inv_wire[71] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[72].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[73] ),
    .A(\inv_wire[72] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[73].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[74] ),
    .A(\inv_wire[73] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[74].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[75] ),
    .A(\inv_wire[74] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[75].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[76] ),
    .A(\inv_wire[75] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[76].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[77] ),
    .A(\inv_wire[76] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[77].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[78] ),
    .A(\inv_wire[77] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[78].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[79] ),
    .A(\inv_wire[78] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[79].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[80] ),
    .A(\inv_wire[79] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[7].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[8] ),
    .A(\inv_wire[7] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[80].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[81] ),
    .A(\inv_wire[80] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[81].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[82] ),
    .A(\inv_wire[81] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[82].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[83] ),
    .A(\inv_wire[82] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[83].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[84] ),
    .A(\inv_wire[83] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[84].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[85] ),
    .A(\inv_wire[84] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[85].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[86] ),
    .A(\inv_wire[85] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[86].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[87] ),
    .A(\inv_wire[86] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[87].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[88] ),
    .A(\inv_wire[87] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[88].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[89] ),
    .A(\inv_wire[88] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[89].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[90] ),
    .A(\inv_wire[89] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[8].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[9] ),
    .A(\inv_wire[8] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[90].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[91] ),
    .A(\inv_wire[90] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[91].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[92] ),
    .A(\inv_wire[91] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[92].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[93] ),
    .A(\inv_wire[92] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[93].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[94] ),
    .A(\inv_wire[93] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[94].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[95] ),
    .A(\inv_wire[94] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[95].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[96] ),
    .A(\inv_wire[95] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[96].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[97] ),
    .A(\inv_wire[96] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[97].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[98] ),
    .A(\inv_wire[97] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[98].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[99] ),
    .A(\inv_wire[98] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[99].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[100] ),
    .A(\inv_wire[99] ),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk3[9].i_inv  (.VDD(VPWR),
    .Y(\inv_wire[10] ),
    .A(\inv_wire[9] ),
    .VSS(VGND));
 sg13cmos5l_dfrbp_1 \genblk4[1].i_ff  (.RESET_B(net1),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\ff_wire[1] ),
    .Q_N(\ff_wire[1] ),
    .CLK(\ff_wire[0] ));
 sg13cmos5l_dfrbp_1 \genblk4[2].i_ff  (.RESET_B(net1),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\ff_wire[2] ),
    .Q_N(\ff_wire[2] ),
    .CLK(\ff_wire[1] ));
 sg13cmos5l_dfrbp_1 \genblk4[3].i_ff  (.RESET_B(net1),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\ff_wire[3] ),
    .Q_N(\ff_wire[3] ),
    .CLK(\ff_wire[2] ));
 sg13cmos5l_buf_1 input1 (.A(enable),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input2 (.A(ffsel[0]),
    .X(net2),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input3 (.A(ffsel[1]),
    .X(net3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input4 (.A(invsel[0]),
    .X(net4),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input5 (.A(invsel[1]),
    .X(net5),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input6 (.A(invsel[2]),
    .X(net6),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input7 (.A(invsel[3]),
    .X(net7),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input8 (.A(invsel[4]),
    .X(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 output9 (.A(net9),
    .X(osc),
    .VDD(VPWR),
    .VSS(VGND));
endmodule
