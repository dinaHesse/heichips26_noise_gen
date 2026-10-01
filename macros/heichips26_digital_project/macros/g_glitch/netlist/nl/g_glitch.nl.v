module g_glitch (osc,
    en);
 input osc;
 input [7:0] en;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire \genblk4[0].n1 ;
 wire \genblk4[0].n2 ;
 wire \genblk4[0].n3 ;
 wire \genblk4[0].n4 ;
 wire \genblk4[0].n5 ;
 wire \genblk4[0].n6 ;
 wire \genblk4[0].n7 ;
 wire \genblk4[0].n8 ;
 wire \genblk4[1].n1 ;
 wire \genblk4[1].n2 ;
 wire \genblk4[1].n3 ;
 wire \genblk4[1].n4 ;
 wire \genblk4[1].n5 ;
 wire \genblk4[1].n6 ;
 wire \genblk4[1].n7 ;
 wire \genblk4[1].n8 ;
 wire \genblk4[2].n1 ;
 wire \genblk4[2].n2 ;
 wire \genblk4[2].n3 ;
 wire \genblk4[2].n4 ;
 wire \genblk4[2].n5 ;
 wire \genblk4[2].n6 ;
 wire \genblk4[2].n7 ;
 wire \genblk4[2].n8 ;
 wire \genblk4[3].n1 ;
 wire \genblk4[3].n2 ;
 wire \genblk4[3].n3 ;
 wire \genblk4[3].n4 ;
 wire \genblk4[3].n5 ;
 wire \genblk4[3].n6 ;
 wire \genblk4[3].n7 ;
 wire \genblk4[3].n8 ;
 wire \genblk4[4].n1 ;
 wire \genblk4[4].n2 ;
 wire \genblk4[4].n3 ;
 wire \genblk4[4].n4 ;
 wire \genblk4[4].n5 ;
 wire \genblk4[4].n6 ;
 wire \genblk4[4].n7 ;
 wire \genblk4[4].n8 ;
 wire \genblk4[5].n1 ;
 wire \genblk4[5].n2 ;
 wire \genblk4[5].n3 ;
 wire \genblk4[5].n4 ;
 wire \genblk4[5].n5 ;
 wire \genblk4[5].n6 ;
 wire \genblk4[5].n7 ;
 wire \genblk4[5].n8 ;
 wire \genblk4[6].n1 ;
 wire \genblk4[6].n2 ;
 wire \genblk4[6].n3 ;
 wire \genblk4[6].n4 ;
 wire \genblk4[6].n5 ;
 wire \genblk4[6].n6 ;
 wire \genblk4[6].n7 ;
 wire \genblk4[6].n8 ;
 wire \genblk4[7].n1 ;
 wire \genblk4[7].n2 ;
 wire \genblk4[7].n3 ;
 wire \genblk4[7].n4 ;
 wire \genblk4[7].n5 ;
 wire \genblk4[7].n6 ;
 wire \genblk4[7].n7 ;
 wire \genblk4[7].n8 ;
 wire o1;
 wire net9;
 wire res;
 wire \w[0] ;
 wire \w[1] ;
 wire \w[2] ;
 wire \w[3] ;
 wire \w[4] ;
 wire \w[5] ;
 wire \w[6] ;
 wire \w[7] ;
 wire \x1[0] ;
 wire \x1[1] ;
 wire \x1[2] ;
 wire \x1[3] ;
 wire \x2[0] ;
 wire \x2[1] ;
 wire x3;

 sg13cmos5l_decap_8 FILLER_0_123 ();
 sg13cmos5l_decap_8 FILLER_0_130 ();
 sg13cmos5l_decap_4 FILLER_0_137 ();
 sg13cmos5l_fill_1 FILLER_0_141 ();
 sg13cmos5l_decap_8 FILLER_0_161 ();
 sg13cmos5l_decap_4 FILLER_0_168 ();
 sg13cmos5l_fill_2 FILLER_0_172 ();
 sg13cmos5l_fill_2 FILLER_0_184 ();
 sg13cmos5l_decap_8 FILLER_0_19 ();
 sg13cmos5l_fill_2 FILLER_0_205 ();
 sg13cmos5l_fill_1 FILLER_0_207 ();
 sg13cmos5l_decap_8 FILLER_0_227 ();
 sg13cmos5l_decap_8 FILLER_0_234 ();
 sg13cmos5l_decap_4 FILLER_0_241 ();
 sg13cmos5l_fill_1 FILLER_0_245 ();
 sg13cmos5l_decap_4 FILLER_0_254 ();
 sg13cmos5l_fill_1 FILLER_0_258 ();
 sg13cmos5l_fill_2 FILLER_0_26 ();
 sg13cmos5l_fill_1 FILLER_0_28 ();
 sg13cmos5l_decap_8 FILLER_0_286 ();
 sg13cmos5l_fill_2 FILLER_0_293 ();
 sg13cmos5l_fill_1 FILLER_0_295 ();
 sg13cmos5l_fill_1 FILLER_0_48 ();
 sg13cmos5l_fill_1 FILLER_0_55 ();
 sg13cmos5l_fill_2 FILLER_0_75 ();
 sg13cmos5l_fill_2 FILLER_0_96 ();
 sg13cmos5l_decap_8 FILLER_1_123 ();
 sg13cmos5l_fill_2 FILLER_1_130 ();
 sg13cmos5l_fill_1 FILLER_1_132 ();
 sg13cmos5l_decap_4 FILLER_1_152 ();
 sg13cmos5l_fill_1 FILLER_1_175 ();
 sg13cmos5l_decap_8 FILLER_1_19 ();
 sg13cmos5l_fill_2 FILLER_1_195 ();
 sg13cmos5l_fill_1 FILLER_1_197 ();
 sg13cmos5l_fill_1 FILLER_1_217 ();
 sg13cmos5l_decap_8 FILLER_1_228 ();
 sg13cmos5l_decap_8 FILLER_1_235 ();
 sg13cmos5l_fill_2 FILLER_1_242 ();
 sg13cmos5l_decap_4 FILLER_1_26 ();
 sg13cmos5l_decap_8 FILLER_1_286 ();
 sg13cmos5l_fill_2 FILLER_1_293 ();
 sg13cmos5l_fill_1 FILLER_1_295 ();
 sg13cmos5l_fill_1 FILLER_1_30 ();
 sg13cmos5l_decap_4 FILLER_1_60 ();
 sg13cmos5l_fill_2 FILLER_1_64 ();
 sg13cmos5l_decap_8 FILLER_2_123 ();
 sg13cmos5l_decap_8 FILLER_2_130 ();
 sg13cmos5l_decap_8 FILLER_2_137 ();
 sg13cmos5l_decap_8 FILLER_2_163 ();
 sg13cmos5l_decap_8 FILLER_2_170 ();
 sg13cmos5l_fill_2 FILLER_2_177 ();
 sg13cmos5l_fill_1 FILLER_2_179 ();
 sg13cmos5l_fill_1 FILLER_2_186 ();
 sg13cmos5l_decap_8 FILLER_2_19 ();
 sg13cmos5l_decap_8 FILLER_2_191 ();
 sg13cmos5l_decap_4 FILLER_2_198 ();
 sg13cmos5l_fill_1 FILLER_2_221 ();
 sg13cmos5l_decap_8 FILLER_2_228 ();
 sg13cmos5l_fill_2 FILLER_2_235 ();
 sg13cmos5l_fill_2 FILLER_2_241 ();
 sg13cmos5l_fill_1 FILLER_2_243 ();
 sg13cmos5l_decap_8 FILLER_2_26 ();
 sg13cmos5l_fill_1 FILLER_2_269 ();
 sg13cmos5l_decap_8 FILLER_2_278 ();
 sg13cmos5l_decap_8 FILLER_2_285 ();
 sg13cmos5l_decap_4 FILLER_2_292 ();
 sg13cmos5l_decap_8 FILLER_2_33 ();
 sg13cmos5l_decap_8 FILLER_2_40 ();
 sg13cmos5l_fill_1 FILLER_2_47 ();
 sg13cmos5l_decap_8 FILLER_2_58 ();
 sg13cmos5l_decap_8 FILLER_2_65 ();
 sg13cmos5l_decap_4 FILLER_2_72 ();
 sg13cmos5l_fill_1 FILLER_2_76 ();
 sg13cmos5l_fill_1 FILLER_2_96 ();
 sg13cmos5l_decap_8 FILLER_3_122 ();
 sg13cmos5l_decap_4 FILLER_3_129 ();
 sg13cmos5l_decap_8 FILLER_3_137 ();
 sg13cmos5l_decap_8 FILLER_3_144 ();
 sg13cmos5l_decap_4 FILLER_3_151 ();
 sg13cmos5l_decap_4 FILLER_3_184 ();
 sg13cmos5l_decap_8 FILLER_3_19 ();
 sg13cmos5l_decap_8 FILLER_3_210 ();
 sg13cmos5l_decap_8 FILLER_3_217 ();
 sg13cmos5l_decap_8 FILLER_3_224 ();
 sg13cmos5l_fill_2 FILLER_3_234 ();
 sg13cmos5l_fill_1 FILLER_3_236 ();
 sg13cmos5l_fill_1 FILLER_3_242 ();
 sg13cmos5l_fill_2 FILLER_3_247 ();
 sg13cmos5l_fill_1 FILLER_3_249 ();
 sg13cmos5l_decap_8 FILLER_3_259 ();
 sg13cmos5l_fill_2 FILLER_3_26 ();
 sg13cmos5l_fill_2 FILLER_3_266 ();
 sg13cmos5l_fill_1 FILLER_3_268 ();
 sg13cmos5l_fill_1 FILLER_3_28 ();
 sg13cmos5l_fill_2 FILLER_3_289 ();
 sg13cmos5l_fill_1 FILLER_3_291 ();
 sg13cmos5l_decap_4 FILLER_4_109 ();
 sg13cmos5l_decap_4 FILLER_4_123 ();
 sg13cmos5l_fill_2 FILLER_4_130 ();
 sg13cmos5l_fill_1 FILLER_4_132 ();
 sg13cmos5l_decap_8 FILLER_4_148 ();
 sg13cmos5l_fill_2 FILLER_4_155 ();
 sg13cmos5l_fill_1 FILLER_4_157 ();
 sg13cmos5l_decap_8 FILLER_4_180 ();
 sg13cmos5l_decap_8 FILLER_4_187 ();
 sg13cmos5l_fill_2 FILLER_4_19 ();
 sg13cmos5l_fill_1 FILLER_4_194 ();
 sg13cmos5l_decap_4 FILLER_4_200 ();
 sg13cmos5l_fill_1 FILLER_4_204 ();
 sg13cmos5l_fill_1 FILLER_4_21 ();
 sg13cmos5l_decap_8 FILLER_4_228 ();
 sg13cmos5l_fill_2 FILLER_4_235 ();
 sg13cmos5l_decap_8 FILLER_4_256 ();
 sg13cmos5l_decap_8 FILLER_4_26 ();
 sg13cmos5l_fill_1 FILLER_4_263 ();
 sg13cmos5l_fill_2 FILLER_4_293 ();
 sg13cmos5l_fill_1 FILLER_4_295 ();
 sg13cmos5l_decap_8 FILLER_4_33 ();
 sg13cmos5l_fill_1 FILLER_4_40 ();
 sg13cmos5l_fill_2 FILLER_4_49 ();
 sg13cmos5l_decap_8 FILLER_4_60 ();
 sg13cmos5l_decap_8 FILLER_4_67 ();
 sg13cmos5l_decap_8 FILLER_4_74 ();
 sg13cmos5l_decap_8 FILLER_4_81 ();
 sg13cmos5l_fill_1 FILLER_4_88 ();
 sg13cmos5l_fill_1 FILLER_4_98 ();
 sg13cmos5l_and2_1 _08_ (.A(res),
    .B(net2),
    .X(_01_));
 sg13cmos5l_and2_1 _09_ (.A(res),
    .B(net3),
    .X(_02_));
 sg13cmos5l_and2_1 _10_ (.A(res),
    .B(net4),
    .X(_03_));
 sg13cmos5l_and2_1 _11_ (.A(res),
    .B(net5),
    .X(_04_));
 sg13cmos5l_and2_1 _12_ (.A(res),
    .B(net6),
    .X(_05_));
 sg13cmos5l_and2_1 _13_ (.A(res),
    .B(net7),
    .X(_06_));
 sg13cmos5l_and2_1 _14_ (.A(res),
    .B(net8),
    .X(_07_));
 sg13cmos5l_and2_1 _15_ (.A(net1),
    .B(res),
    .X(_00_));
 sg13cmos5l_dlygate4sd3_1 \g_stage[0].i_dly  (.A(\w[0] ),
    .X(\w[1] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[1].i_dly  (.A(\w[1] ),
    .X(\w[2] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[2].i_dly  (.A(\w[2] ),
    .X(\w[3] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[3].i_dly  (.A(\w[3] ),
    .X(\w[4] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[4].i_dly  (.A(\w[4] ),
    .X(\w[5] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[5].i_dly  (.A(\w[5] ),
    .X(\w[6] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[6].i_dly  (.A(\w[6] ),
    .X(\w[7] ));
 sg13cmos5l_xnor2_1 \g_xor1[0].i_xor  (.Y(\x1[0] ),
    .A(\w[0] ),
    .B(\w[1] ));
 sg13cmos5l_xnor2_1 \g_xor1[1].i_xor  (.Y(\x1[1] ),
    .A(\w[2] ),
    .B(\w[3] ));
 sg13cmos5l_xnor2_1 \g_xor1[2].i_xor  (.Y(\x1[2] ),
    .A(\w[4] ),
    .B(\w[5] ));
 sg13cmos5l_xnor2_1 \g_xor1[3].i_xor  (.Y(\x1[3] ),
    .A(\w[6] ),
    .B(\w[7] ));
 sg13cmos5l_xnor2_1 \g_xor2[0].i_xor  (.Y(\x2[0] ),
    .A(\x1[0] ),
    .B(\x1[1] ));
 sg13cmos5l_xnor2_1 \g_xor2[1].i_xor  (.Y(\x2[1] ),
    .A(\x1[2] ),
    .B(\x1[3] ));
 sg13cmos5l_inv_1 \genblk4[0].i_inv1  (.Y(\genblk4[0].n1 ),
    .A(_00_));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16  (.A(\genblk4[0].n4 ),
    .Y(\genblk4[0].n5 ));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16b  (.A(\genblk4[0].n5 ),
    .Y(\genblk4[0].n6 ));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16c  (.A(\genblk4[0].n6 ),
    .Y(\genblk4[0].n7 ));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16d  (.A(\genblk4[0].n7 ),
    .Y(\genblk4[0].n8 ));
 sg13cmos5l_inv_2 \genblk4[0].i_inv2  (.Y(\genblk4[0].n2 ),
    .A(\genblk4[0].n1 ));
 sg13cmos5l_inv_4 \genblk4[0].i_inv4  (.A(\genblk4[0].n2 ),
    .Y(\genblk4[0].n3 ));
 sg13cmos5l_inv_8 \genblk4[0].i_inv8  (.Y(\genblk4[0].n4 ),
    .A(\genblk4[0].n3 ));
 sg13cmos5l_inv_1 \genblk4[1].i_inv1  (.Y(\genblk4[1].n1 ),
    .A(_01_));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16  (.A(\genblk4[1].n4 ),
    .Y(\genblk4[1].n5 ));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16b  (.A(\genblk4[1].n5 ),
    .Y(\genblk4[1].n6 ));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16c  (.A(\genblk4[1].n6 ),
    .Y(\genblk4[1].n7 ));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16d  (.A(\genblk4[1].n7 ),
    .Y(\genblk4[1].n8 ));
 sg13cmos5l_inv_2 \genblk4[1].i_inv2  (.Y(\genblk4[1].n2 ),
    .A(\genblk4[1].n1 ));
 sg13cmos5l_inv_4 \genblk4[1].i_inv4  (.A(\genblk4[1].n2 ),
    .Y(\genblk4[1].n3 ));
 sg13cmos5l_inv_8 \genblk4[1].i_inv8  (.Y(\genblk4[1].n4 ),
    .A(\genblk4[1].n3 ));
 sg13cmos5l_inv_1 \genblk4[2].i_inv1  (.Y(\genblk4[2].n1 ),
    .A(_02_));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16  (.A(\genblk4[2].n4 ),
    .Y(\genblk4[2].n5 ));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16b  (.A(\genblk4[2].n5 ),
    .Y(\genblk4[2].n6 ));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16c  (.A(\genblk4[2].n6 ),
    .Y(\genblk4[2].n7 ));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16d  (.A(\genblk4[2].n7 ),
    .Y(\genblk4[2].n8 ));
 sg13cmos5l_inv_2 \genblk4[2].i_inv2  (.Y(\genblk4[2].n2 ),
    .A(\genblk4[2].n1 ));
 sg13cmos5l_inv_4 \genblk4[2].i_inv4  (.A(\genblk4[2].n2 ),
    .Y(\genblk4[2].n3 ));
 sg13cmos5l_inv_8 \genblk4[2].i_inv8  (.Y(\genblk4[2].n4 ),
    .A(\genblk4[2].n3 ));
 sg13cmos5l_inv_1 \genblk4[3].i_inv1  (.Y(\genblk4[3].n1 ),
    .A(_03_));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16  (.A(\genblk4[3].n4 ),
    .Y(\genblk4[3].n5 ));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16b  (.A(\genblk4[3].n5 ),
    .Y(\genblk4[3].n6 ));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16c  (.A(\genblk4[3].n6 ),
    .Y(\genblk4[3].n7 ));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16d  (.A(\genblk4[3].n7 ),
    .Y(\genblk4[3].n8 ));
 sg13cmos5l_inv_2 \genblk4[3].i_inv2  (.Y(\genblk4[3].n2 ),
    .A(\genblk4[3].n1 ));
 sg13cmos5l_inv_4 \genblk4[3].i_inv4  (.A(\genblk4[3].n2 ),
    .Y(\genblk4[3].n3 ));
 sg13cmos5l_inv_8 \genblk4[3].i_inv8  (.Y(\genblk4[3].n4 ),
    .A(\genblk4[3].n3 ));
 sg13cmos5l_inv_1 \genblk4[4].i_inv1  (.Y(\genblk4[4].n1 ),
    .A(_04_));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16  (.A(\genblk4[4].n4 ),
    .Y(\genblk4[4].n5 ));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16b  (.A(\genblk4[4].n5 ),
    .Y(\genblk4[4].n6 ));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16c  (.A(\genblk4[4].n6 ),
    .Y(\genblk4[4].n7 ));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16d  (.A(\genblk4[4].n7 ),
    .Y(\genblk4[4].n8 ));
 sg13cmos5l_inv_2 \genblk4[4].i_inv2  (.Y(\genblk4[4].n2 ),
    .A(\genblk4[4].n1 ));
 sg13cmos5l_inv_4 \genblk4[4].i_inv4  (.A(\genblk4[4].n2 ),
    .Y(\genblk4[4].n3 ));
 sg13cmos5l_inv_8 \genblk4[4].i_inv8  (.Y(\genblk4[4].n4 ),
    .A(\genblk4[4].n3 ));
 sg13cmos5l_inv_1 \genblk4[5].i_inv1  (.Y(\genblk4[5].n1 ),
    .A(_05_));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16  (.A(\genblk4[5].n4 ),
    .Y(\genblk4[5].n5 ));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16b  (.A(\genblk4[5].n5 ),
    .Y(\genblk4[5].n6 ));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16c  (.A(\genblk4[5].n6 ),
    .Y(\genblk4[5].n7 ));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16d  (.A(\genblk4[5].n7 ),
    .Y(\genblk4[5].n8 ));
 sg13cmos5l_inv_2 \genblk4[5].i_inv2  (.Y(\genblk4[5].n2 ),
    .A(\genblk4[5].n1 ));
 sg13cmos5l_inv_4 \genblk4[5].i_inv4  (.A(\genblk4[5].n2 ),
    .Y(\genblk4[5].n3 ));
 sg13cmos5l_inv_8 \genblk4[5].i_inv8  (.Y(\genblk4[5].n4 ),
    .A(\genblk4[5].n3 ));
 sg13cmos5l_inv_1 \genblk4[6].i_inv1  (.Y(\genblk4[6].n1 ),
    .A(_06_));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16  (.A(\genblk4[6].n4 ),
    .Y(\genblk4[6].n5 ));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16b  (.A(\genblk4[6].n5 ),
    .Y(\genblk4[6].n6 ));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16c  (.A(\genblk4[6].n6 ),
    .Y(\genblk4[6].n7 ));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16d  (.A(\genblk4[6].n7 ),
    .Y(\genblk4[6].n8 ));
 sg13cmos5l_inv_2 \genblk4[6].i_inv2  (.Y(\genblk4[6].n2 ),
    .A(\genblk4[6].n1 ));
 sg13cmos5l_inv_4 \genblk4[6].i_inv4  (.A(\genblk4[6].n2 ),
    .Y(\genblk4[6].n3 ));
 sg13cmos5l_inv_8 \genblk4[6].i_inv8  (.Y(\genblk4[6].n4 ),
    .A(\genblk4[6].n3 ));
 sg13cmos5l_inv_1 \genblk4[7].i_inv1  (.Y(\genblk4[7].n1 ),
    .A(_07_));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16  (.A(\genblk4[7].n4 ),
    .Y(\genblk4[7].n5 ));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16b  (.A(\genblk4[7].n5 ),
    .Y(\genblk4[7].n6 ));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16c  (.A(\genblk4[7].n6 ),
    .Y(\genblk4[7].n7 ));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16d  (.A(\genblk4[7].n7 ),
    .Y(\genblk4[7].n8 ));
 sg13cmos5l_inv_2 \genblk4[7].i_inv2  (.Y(\genblk4[7].n2 ),
    .A(\genblk4[7].n1 ));
 sg13cmos5l_inv_4 \genblk4[7].i_inv4  (.A(\genblk4[7].n2 ),
    .Y(\genblk4[7].n3 ));
 sg13cmos5l_inv_8 \genblk4[7].i_inv8  (.Y(\genblk4[7].n4 ),
    .A(\genblk4[7].n3 ));
 sg13cmos5l_inv_1 i_inp1 (.Y(o1),
    .A(net9));
 sg13cmos5l_inv_4 i_inp2 (.A(o1),
    .Y(\w[0] ));
 sg13cmos5l_buf_4 i_res_buf (.X(res),
    .A(x3));
 sg13cmos5l_xnor2_1 i_xor3 (.Y(x3),
    .A(\x2[0] ),
    .B(\x2[1] ));
 sg13cmos5l_buf_1 input1 (.A(en[0]),
    .X(net1));
 sg13cmos5l_buf_1 input2 (.A(en[1]),
    .X(net2));
 sg13cmos5l_buf_1 input3 (.A(en[2]),
    .X(net3));
 sg13cmos5l_buf_1 input4 (.A(en[3]),
    .X(net4));
 sg13cmos5l_buf_1 input5 (.A(en[4]),
    .X(net5));
 sg13cmos5l_buf_1 input6 (.A(en[5]),
    .X(net6));
 sg13cmos5l_buf_1 input7 (.A(en[6]),
    .X(net7));
 sg13cmos5l_buf_1 input8 (.A(en[7]),
    .X(net8));
 sg13cmos5l_buf_1 input9 (.A(osc),
    .X(net9));
endmodule
