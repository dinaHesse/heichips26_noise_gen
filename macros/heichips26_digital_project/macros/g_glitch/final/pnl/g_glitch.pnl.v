module g_glitch (osc,
    VPWR,
    VGND,
    en);
 input osc;
 inout VPWR;
 inout VGND;
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

 sg13cmos5l_decap_8 FILLER_0_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_0_137 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_141 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_161 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_0_168 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_184 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_205 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_207 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_227 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_234 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_0_241 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_245 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_0_254 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_258 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_286 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_48 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_55 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_75 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_152 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_175 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_195 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_197 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_217 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_242 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_286 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_30 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_60 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_64 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_137 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_163 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_170 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_177 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_191 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_2_198 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_221 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_241 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_243 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_269 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_278 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_285 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_2_292 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_33 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_40 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_47 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_58 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_65 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_2_72 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_76 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_96 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_3_129 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_137 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_144 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_3_151 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_3_184 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_210 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_217 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_224 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_234 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_236 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_242 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_247 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_249 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_259 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_266 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_268 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_289 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_291 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_109 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_148 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_157 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_180 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_187 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_194 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_200 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_204 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_256 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_263 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_33 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_40 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_60 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_67 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_74 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_88 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _08_ (.A(res),
    .B(net2),
    .X(_01_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _09_ (.A(res),
    .B(net3),
    .X(_02_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _10_ (.A(res),
    .B(net4),
    .X(_03_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _11_ (.A(res),
    .B(net5),
    .X(_04_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _12_ (.A(res),
    .B(net6),
    .X(_05_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _13_ (.A(res),
    .B(net7),
    .X(_06_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _14_ (.A(res),
    .B(net8),
    .X(_07_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _15_ (.A(net1),
    .B(res),
    .X(_00_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_dlygate4sd3_1 \g_stage[0].i_dly  (.A(\w[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[1] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[1].i_dly  (.A(\w[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[2] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[2].i_dly  (.A(\w[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[3] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[3].i_dly  (.A(\w[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[4] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[4].i_dly  (.A(\w[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[5] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[5].i_dly  (.A(\w[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[6] ));
 sg13cmos5l_dlygate4sd3_1 \g_stage[6].i_dly  (.A(\w[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(\w[7] ));
 sg13cmos5l_xnor2_1 \g_xor1[0].i_xor  (.Y(\x1[0] ),
    .A(\w[0] ),
    .B(\w[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 \g_xor1[1].i_xor  (.Y(\x1[1] ),
    .A(\w[2] ),
    .B(\w[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 \g_xor1[2].i_xor  (.Y(\x1[2] ),
    .A(\w[4] ),
    .B(\w[5] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 \g_xor1[3].i_xor  (.Y(\x1[3] ),
    .A(\w[6] ),
    .B(\w[7] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 \g_xor2[0].i_xor  (.Y(\x2[0] ),
    .A(\x1[0] ),
    .B(\x1[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 \g_xor2[1].i_xor  (.Y(\x2[1] ),
    .A(\x1[2] ),
    .B(\x1[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[0].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[0].n1 ),
    .A(_00_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16  (.A(\genblk4[0].n4 ),
    .Y(\genblk4[0].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16b  (.A(\genblk4[0].n5 ),
    .Y(\genblk4[0].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16c  (.A(\genblk4[0].n6 ),
    .Y(\genblk4[0].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[0].i_inv16d  (.A(\genblk4[0].n7 ),
    .Y(\genblk4[0].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[0].i_inv2  (.Y(\genblk4[0].n2 ),
    .A(\genblk4[0].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[0].i_inv4  (.A(\genblk4[0].n2 ),
    .Y(\genblk4[0].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[0].i_inv8  (.Y(\genblk4[0].n4 ),
    .A(\genblk4[0].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[1].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[1].n1 ),
    .A(_01_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16  (.A(\genblk4[1].n4 ),
    .Y(\genblk4[1].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16b  (.A(\genblk4[1].n5 ),
    .Y(\genblk4[1].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16c  (.A(\genblk4[1].n6 ),
    .Y(\genblk4[1].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[1].i_inv16d  (.A(\genblk4[1].n7 ),
    .Y(\genblk4[1].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[1].i_inv2  (.Y(\genblk4[1].n2 ),
    .A(\genblk4[1].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[1].i_inv4  (.A(\genblk4[1].n2 ),
    .Y(\genblk4[1].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[1].i_inv8  (.Y(\genblk4[1].n4 ),
    .A(\genblk4[1].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[2].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[2].n1 ),
    .A(_02_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16  (.A(\genblk4[2].n4 ),
    .Y(\genblk4[2].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16b  (.A(\genblk4[2].n5 ),
    .Y(\genblk4[2].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16c  (.A(\genblk4[2].n6 ),
    .Y(\genblk4[2].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[2].i_inv16d  (.A(\genblk4[2].n7 ),
    .Y(\genblk4[2].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[2].i_inv2  (.Y(\genblk4[2].n2 ),
    .A(\genblk4[2].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[2].i_inv4  (.A(\genblk4[2].n2 ),
    .Y(\genblk4[2].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[2].i_inv8  (.Y(\genblk4[2].n4 ),
    .A(\genblk4[2].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[3].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[3].n1 ),
    .A(_03_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16  (.A(\genblk4[3].n4 ),
    .Y(\genblk4[3].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16b  (.A(\genblk4[3].n5 ),
    .Y(\genblk4[3].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16c  (.A(\genblk4[3].n6 ),
    .Y(\genblk4[3].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[3].i_inv16d  (.A(\genblk4[3].n7 ),
    .Y(\genblk4[3].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[3].i_inv2  (.Y(\genblk4[3].n2 ),
    .A(\genblk4[3].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[3].i_inv4  (.A(\genblk4[3].n2 ),
    .Y(\genblk4[3].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[3].i_inv8  (.Y(\genblk4[3].n4 ),
    .A(\genblk4[3].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[4].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[4].n1 ),
    .A(_04_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16  (.A(\genblk4[4].n4 ),
    .Y(\genblk4[4].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16b  (.A(\genblk4[4].n5 ),
    .Y(\genblk4[4].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16c  (.A(\genblk4[4].n6 ),
    .Y(\genblk4[4].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[4].i_inv16d  (.A(\genblk4[4].n7 ),
    .Y(\genblk4[4].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[4].i_inv2  (.Y(\genblk4[4].n2 ),
    .A(\genblk4[4].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[4].i_inv4  (.A(\genblk4[4].n2 ),
    .Y(\genblk4[4].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[4].i_inv8  (.Y(\genblk4[4].n4 ),
    .A(\genblk4[4].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[5].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[5].n1 ),
    .A(_05_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16  (.A(\genblk4[5].n4 ),
    .Y(\genblk4[5].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16b  (.A(\genblk4[5].n5 ),
    .Y(\genblk4[5].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16c  (.A(\genblk4[5].n6 ),
    .Y(\genblk4[5].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[5].i_inv16d  (.A(\genblk4[5].n7 ),
    .Y(\genblk4[5].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[5].i_inv2  (.Y(\genblk4[5].n2 ),
    .A(\genblk4[5].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[5].i_inv4  (.A(\genblk4[5].n2 ),
    .Y(\genblk4[5].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[5].i_inv8  (.Y(\genblk4[5].n4 ),
    .A(\genblk4[5].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[6].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[6].n1 ),
    .A(_06_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16  (.A(\genblk4[6].n4 ),
    .Y(\genblk4[6].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16b  (.A(\genblk4[6].n5 ),
    .Y(\genblk4[6].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16c  (.A(\genblk4[6].n6 ),
    .Y(\genblk4[6].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[6].i_inv16d  (.A(\genblk4[6].n7 ),
    .Y(\genblk4[6].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[6].i_inv2  (.Y(\genblk4[6].n2 ),
    .A(\genblk4[6].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[6].i_inv4  (.A(\genblk4[6].n2 ),
    .Y(\genblk4[6].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[6].i_inv8  (.Y(\genblk4[6].n4 ),
    .A(\genblk4[6].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk4[7].i_inv1  (.VDD(VPWR),
    .Y(\genblk4[7].n1 ),
    .A(_07_),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16  (.A(\genblk4[7].n4 ),
    .Y(\genblk4[7].n5 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16b  (.A(\genblk4[7].n5 ),
    .Y(\genblk4[7].n6 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16c  (.A(\genblk4[7].n6 ),
    .Y(\genblk4[7].n7 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk4[7].i_inv16d  (.A(\genblk4[7].n7 ),
    .Y(\genblk4[7].n8 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_2 \genblk4[7].i_inv2  (.Y(\genblk4[7].n2 ),
    .A(\genblk4[7].n1 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_4 \genblk4[7].i_inv4  (.A(\genblk4[7].n2 ),
    .Y(\genblk4[7].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_8 \genblk4[7].i_inv8  (.Y(\genblk4[7].n4 ),
    .A(\genblk4[7].n3 ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 i_inp1 (.VDD(VPWR),
    .Y(o1),
    .A(net9),
    .VSS(VGND));
 sg13cmos5l_inv_4 i_inp2 (.A(o1),
    .Y(\w[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_4 i_res_buf (.X(res),
    .A(x3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 i_xor3 (.Y(x3),
    .A(\x2[0] ),
    .B(\x2[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input1 (.A(en[0]),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input2 (.A(en[1]),
    .X(net2),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input3 (.A(en[2]),
    .X(net3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input4 (.A(en[3]),
    .X(net4),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input5 (.A(en[4]),
    .X(net5),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input6 (.A(en[5]),
    .X(net6),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input7 (.A(en[6]),
    .X(net7),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input8 (.A(en[7]),
    .X(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input9 (.A(osc),
    .X(net9),
    .VDD(VPWR),
    .VSS(VGND));
endmodule
