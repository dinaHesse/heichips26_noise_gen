module e_load_uniform (en,
    osc);
 input [7:0] en;
 input [7:0] osc;

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
 wire \genblk1[0].n1 ;
 wire \genblk1[0].n10 ;
 wire \genblk1[0].n11 ;
 wire \genblk1[0].n12 ;
 wire \genblk1[0].n13 ;
 wire \genblk1[0].n14 ;
 wire \genblk1[0].n15 ;
 wire \genblk1[0].n16 ;
 wire \genblk1[0].n17 ;
 wire \genblk1[0].n18 ;
 wire \genblk1[0].n2 ;
 wire \genblk1[0].n3 ;
 wire \genblk1[0].n4 ;
 wire \genblk1[0].n5 ;
 wire \genblk1[0].n6 ;
 wire \genblk1[0].n7 ;
 wire \genblk1[0].n8 ;
 wire \genblk1[0].n9 ;
 wire \genblk1[1].n1 ;
 wire \genblk1[1].n10 ;
 wire \genblk1[1].n11 ;
 wire \genblk1[1].n12 ;
 wire \genblk1[1].n13 ;
 wire \genblk1[1].n14 ;
 wire \genblk1[1].n15 ;
 wire \genblk1[1].n16 ;
 wire \genblk1[1].n17 ;
 wire \genblk1[1].n18 ;
 wire \genblk1[1].n2 ;
 wire \genblk1[1].n3 ;
 wire \genblk1[1].n4 ;
 wire \genblk1[1].n5 ;
 wire \genblk1[1].n6 ;
 wire \genblk1[1].n7 ;
 wire \genblk1[1].n8 ;
 wire \genblk1[1].n9 ;
 wire \genblk1[2].n1 ;
 wire \genblk1[2].n10 ;
 wire \genblk1[2].n11 ;
 wire \genblk1[2].n12 ;
 wire \genblk1[2].n13 ;
 wire \genblk1[2].n14 ;
 wire \genblk1[2].n15 ;
 wire \genblk1[2].n16 ;
 wire \genblk1[2].n17 ;
 wire \genblk1[2].n18 ;
 wire \genblk1[2].n2 ;
 wire \genblk1[2].n3 ;
 wire \genblk1[2].n4 ;
 wire \genblk1[2].n5 ;
 wire \genblk1[2].n6 ;
 wire \genblk1[2].n7 ;
 wire \genblk1[2].n8 ;
 wire \genblk1[2].n9 ;
 wire \genblk1[3].n1 ;
 wire \genblk1[3].n10 ;
 wire \genblk1[3].n11 ;
 wire \genblk1[3].n12 ;
 wire \genblk1[3].n13 ;
 wire \genblk1[3].n14 ;
 wire \genblk1[3].n15 ;
 wire \genblk1[3].n16 ;
 wire \genblk1[3].n17 ;
 wire \genblk1[3].n18 ;
 wire \genblk1[3].n2 ;
 wire \genblk1[3].n3 ;
 wire \genblk1[3].n4 ;
 wire \genblk1[3].n5 ;
 wire \genblk1[3].n6 ;
 wire \genblk1[3].n7 ;
 wire \genblk1[3].n8 ;
 wire \genblk1[3].n9 ;
 wire \genblk1[4].n1 ;
 wire \genblk1[4].n10 ;
 wire \genblk1[4].n11 ;
 wire \genblk1[4].n12 ;
 wire \genblk1[4].n13 ;
 wire \genblk1[4].n14 ;
 wire \genblk1[4].n15 ;
 wire \genblk1[4].n16 ;
 wire \genblk1[4].n17 ;
 wire \genblk1[4].n18 ;
 wire \genblk1[4].n2 ;
 wire \genblk1[4].n3 ;
 wire \genblk1[4].n4 ;
 wire \genblk1[4].n5 ;
 wire \genblk1[4].n6 ;
 wire \genblk1[4].n7 ;
 wire \genblk1[4].n8 ;
 wire \genblk1[4].n9 ;
 wire \genblk1[5].n1 ;
 wire \genblk1[5].n10 ;
 wire \genblk1[5].n11 ;
 wire \genblk1[5].n12 ;
 wire \genblk1[5].n13 ;
 wire \genblk1[5].n14 ;
 wire \genblk1[5].n15 ;
 wire \genblk1[5].n16 ;
 wire \genblk1[5].n17 ;
 wire \genblk1[5].n18 ;
 wire \genblk1[5].n2 ;
 wire \genblk1[5].n3 ;
 wire \genblk1[5].n4 ;
 wire \genblk1[5].n5 ;
 wire \genblk1[5].n6 ;
 wire \genblk1[5].n7 ;
 wire \genblk1[5].n8 ;
 wire \genblk1[5].n9 ;
 wire \genblk1[6].n1 ;
 wire \genblk1[6].n10 ;
 wire \genblk1[6].n11 ;
 wire \genblk1[6].n12 ;
 wire \genblk1[6].n13 ;
 wire \genblk1[6].n14 ;
 wire \genblk1[6].n15 ;
 wire \genblk1[6].n16 ;
 wire \genblk1[6].n17 ;
 wire \genblk1[6].n18 ;
 wire \genblk1[6].n2 ;
 wire \genblk1[6].n3 ;
 wire \genblk1[6].n4 ;
 wire \genblk1[6].n5 ;
 wire \genblk1[6].n6 ;
 wire \genblk1[6].n7 ;
 wire \genblk1[6].n8 ;
 wire \genblk1[6].n9 ;
 wire \genblk1[7].n1 ;
 wire \genblk1[7].n10 ;
 wire \genblk1[7].n11 ;
 wire \genblk1[7].n12 ;
 wire \genblk1[7].n13 ;
 wire \genblk1[7].n14 ;
 wire \genblk1[7].n15 ;
 wire \genblk1[7].n16 ;
 wire \genblk1[7].n17 ;
 wire \genblk1[7].n18 ;
 wire \genblk1[7].n2 ;
 wire \genblk1[7].n3 ;
 wire \genblk1[7].n4 ;
 wire \genblk1[7].n5 ;
 wire \genblk1[7].n6 ;
 wire \genblk1[7].n7 ;
 wire \genblk1[7].n8 ;
 wire \genblk1[7].n9 ;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;

 sg13cmos5l_decap_8 FILLER_0_123 ();
 sg13cmos5l_fill_2 FILLER_0_130 ();
 sg13cmos5l_fill_1 FILLER_0_132 ();
 sg13cmos5l_fill_2 FILLER_0_147 ();
 sg13cmos5l_decap_8 FILLER_0_177 ();
 sg13cmos5l_decap_8 FILLER_0_184 ();
 sg13cmos5l_fill_2 FILLER_0_19 ();
 sg13cmos5l_decap_4 FILLER_0_191 ();
 sg13cmos5l_fill_1 FILLER_0_21 ();
 sg13cmos5l_decap_8 FILLER_0_228 ();
 sg13cmos5l_fill_2 FILLER_0_235 ();
 sg13cmos5l_fill_2 FILLER_0_26 ();
 sg13cmos5l_decap_8 FILLER_0_260 ();
 sg13cmos5l_fill_1 FILLER_0_267 ();
 sg13cmos5l_fill_1 FILLER_0_28 ();
 sg13cmos5l_decap_4 FILLER_0_292 ();
 sg13cmos5l_decap_8 FILLER_0_34 ();
 sg13cmos5l_decap_8 FILLER_0_69 ();
 sg13cmos5l_fill_1 FILLER_0_99 ();
 sg13cmos5l_decap_8 FILLER_10_123 ();
 sg13cmos5l_decap_8 FILLER_10_130 ();
 sg13cmos5l_fill_2 FILLER_10_137 ();
 sg13cmos5l_fill_1 FILLER_10_139 ();
 sg13cmos5l_decap_8 FILLER_10_159 ();
 sg13cmos5l_decap_8 FILLER_10_166 ();
 sg13cmos5l_decap_4 FILLER_10_173 ();
 sg13cmos5l_decap_8 FILLER_10_19 ();
 sg13cmos5l_decap_8 FILLER_10_215 ();
 sg13cmos5l_decap_8 FILLER_10_222 ();
 sg13cmos5l_decap_8 FILLER_10_229 ();
 sg13cmos5l_fill_1 FILLER_10_236 ();
 sg13cmos5l_fill_1 FILLER_10_256 ();
 sg13cmos5l_decap_4 FILLER_10_26 ();
 sg13cmos5l_fill_1 FILLER_10_295 ();
 sg13cmos5l_fill_2 FILLER_10_30 ();
 sg13cmos5l_decap_8 FILLER_10_70 ();
 sg13cmos5l_fill_1 FILLER_10_77 ();
 sg13cmos5l_decap_8 FILLER_10_97 ();
 sg13cmos5l_fill_2 FILLER_11_102 ();
 sg13cmos5l_decap_8 FILLER_11_123 ();
 sg13cmos5l_decap_8 FILLER_11_130 ();
 sg13cmos5l_fill_2 FILLER_11_137 ();
 sg13cmos5l_decap_8 FILLER_11_158 ();
 sg13cmos5l_decap_8 FILLER_11_165 ();
 sg13cmos5l_decap_4 FILLER_11_172 ();
 sg13cmos5l_fill_1 FILLER_11_176 ();
 sg13cmos5l_fill_2 FILLER_11_19 ();
 sg13cmos5l_decap_8 FILLER_11_196 ();
 sg13cmos5l_decap_4 FILLER_11_203 ();
 sg13cmos5l_fill_2 FILLER_11_207 ();
 sg13cmos5l_fill_1 FILLER_11_21 ();
 sg13cmos5l_decap_8 FILLER_11_228 ();
 sg13cmos5l_fill_2 FILLER_11_235 ();
 sg13cmos5l_fill_1 FILLER_11_237 ();
 sg13cmos5l_decap_8 FILLER_11_257 ();
 sg13cmos5l_fill_2 FILLER_11_26 ();
 sg13cmos5l_fill_2 FILLER_11_264 ();
 sg13cmos5l_fill_1 FILLER_11_266 ();
 sg13cmos5l_fill_1 FILLER_11_28 ();
 sg13cmos5l_decap_4 FILLER_11_291 ();
 sg13cmos5l_fill_1 FILLER_11_295 ();
 sg13cmos5l_decap_8 FILLER_11_33 ();
 sg13cmos5l_fill_2 FILLER_11_40 ();
 sg13cmos5l_fill_1 FILLER_11_42 ();
 sg13cmos5l_decap_8 FILLER_11_62 ();
 sg13cmos5l_decap_8 FILLER_11_69 ();
 sg13cmos5l_decap_8 FILLER_11_95 ();
 sg13cmos5l_decap_8 FILLER_1_123 ();
 sg13cmos5l_fill_2 FILLER_1_130 ();
 sg13cmos5l_fill_1 FILLER_1_132 ();
 sg13cmos5l_decap_4 FILLER_1_152 ();
 sg13cmos5l_fill_2 FILLER_1_175 ();
 sg13cmos5l_fill_1 FILLER_1_177 ();
 sg13cmos5l_fill_2 FILLER_1_19 ();
 sg13cmos5l_fill_1 FILLER_1_21 ();
 sg13cmos5l_decap_8 FILLER_1_228 ();
 sg13cmos5l_fill_2 FILLER_1_235 ();
 sg13cmos5l_fill_2 FILLER_1_256 ();
 sg13cmos5l_fill_2 FILLER_1_26 ();
 sg13cmos5l_fill_1 FILLER_1_28 ();
 sg13cmos5l_fill_1 FILLER_1_32 ();
 sg13cmos5l_decap_4 FILLER_1_37 ();
 sg13cmos5l_decap_8 FILLER_2_122 ();
 sg13cmos5l_decap_8 FILLER_2_129 ();
 sg13cmos5l_decap_8 FILLER_2_136 ();
 sg13cmos5l_decap_4 FILLER_2_143 ();
 sg13cmos5l_decap_8 FILLER_2_166 ();
 sg13cmos5l_fill_2 FILLER_2_19 ();
 sg13cmos5l_decap_8 FILLER_2_198 ();
 sg13cmos5l_decap_8 FILLER_2_205 ();
 sg13cmos5l_fill_1 FILLER_2_21 ();
 sg13cmos5l_fill_2 FILLER_2_212 ();
 sg13cmos5l_decap_8 FILLER_2_217 ();
 sg13cmos5l_decap_8 FILLER_2_224 ();
 sg13cmos5l_decap_8 FILLER_2_231 ();
 sg13cmos5l_fill_2 FILLER_2_238 ();
 sg13cmos5l_fill_1 FILLER_2_240 ();
 sg13cmos5l_fill_2 FILLER_2_26 ();
 sg13cmos5l_decap_4 FILLER_2_260 ();
 sg13cmos5l_fill_1 FILLER_2_264 ();
 sg13cmos5l_fill_1 FILLER_2_28 ();
 sg13cmos5l_decap_8 FILLER_2_284 ();
 sg13cmos5l_decap_4 FILLER_2_291 ();
 sg13cmos5l_fill_1 FILLER_2_295 ();
 sg13cmos5l_decap_8 FILLER_2_61 ();
 sg13cmos5l_decap_8 FILLER_2_87 ();
 sg13cmos5l_fill_2 FILLER_2_94 ();
 sg13cmos5l_fill_1 FILLER_2_96 ();
 sg13cmos5l_fill_2 FILLER_3_102 ();
 sg13cmos5l_decap_8 FILLER_3_123 ();
 sg13cmos5l_decap_8 FILLER_3_130 ();
 sg13cmos5l_decap_8 FILLER_3_137 ();
 sg13cmos5l_decap_4 FILLER_3_144 ();
 sg13cmos5l_fill_2 FILLER_3_148 ();
 sg13cmos5l_decap_8 FILLER_3_169 ();
 sg13cmos5l_fill_1 FILLER_3_176 ();
 sg13cmos5l_decap_8 FILLER_3_19 ();
 sg13cmos5l_decap_8 FILLER_3_196 ();
 sg13cmos5l_fill_1 FILLER_3_203 ();
 sg13cmos5l_decap_8 FILLER_3_223 ();
 sg13cmos5l_decap_8 FILLER_3_230 ();
 sg13cmos5l_decap_8 FILLER_3_256 ();
 sg13cmos5l_decap_8 FILLER_3_26 ();
 sg13cmos5l_decap_4 FILLER_3_263 ();
 sg13cmos5l_decap_8 FILLER_3_286 ();
 sg13cmos5l_fill_2 FILLER_3_293 ();
 sg13cmos5l_fill_1 FILLER_3_295 ();
 sg13cmos5l_decap_8 FILLER_3_33 ();
 sg13cmos5l_decap_4 FILLER_3_59 ();
 sg13cmos5l_fill_1 FILLER_3_63 ();
 sg13cmos5l_decap_8 FILLER_3_69 ();
 sg13cmos5l_decap_8 FILLER_3_95 ();
 sg13cmos5l_decap_8 FILLER_4_123 ();
 sg13cmos5l_fill_2 FILLER_4_130 ();
 sg13cmos5l_fill_1 FILLER_4_132 ();
 sg13cmos5l_decap_8 FILLER_4_138 ();
 sg13cmos5l_decap_4 FILLER_4_145 ();
 sg13cmos5l_fill_1 FILLER_4_149 ();
 sg13cmos5l_fill_2 FILLER_4_19 ();
 sg13cmos5l_fill_1 FILLER_4_21 ();
 sg13cmos5l_decap_8 FILLER_4_226 ();
 sg13cmos5l_decap_4 FILLER_4_233 ();
 sg13cmos5l_decap_8 FILLER_4_26 ();
 sg13cmos5l_fill_2 FILLER_4_294 ();
 sg13cmos5l_decap_4 FILLER_4_33 ();
 sg13cmos5l_fill_2 FILLER_4_37 ();
 sg13cmos5l_decap_8 FILLER_4_58 ();
 sg13cmos5l_decap_4 FILLER_4_65 ();
 sg13cmos5l_decap_8 FILLER_4_72 ();
 sg13cmos5l_decap_4 FILLER_4_79 ();
 sg13cmos5l_fill_2 FILLER_4_83 ();
 sg13cmos5l_fill_2 FILLER_5_102 ();
 sg13cmos5l_decap_4 FILLER_5_123 ();
 sg13cmos5l_decap_4 FILLER_5_130 ();
 sg13cmos5l_fill_1 FILLER_5_134 ();
 sg13cmos5l_decap_8 FILLER_5_139 ();
 sg13cmos5l_decap_8 FILLER_5_146 ();
 sg13cmos5l_decap_4 FILLER_5_153 ();
 sg13cmos5l_fill_1 FILLER_5_157 ();
 sg13cmos5l_fill_2 FILLER_5_19 ();
 sg13cmos5l_decap_8 FILLER_5_196 ();
 sg13cmos5l_decap_4 FILLER_5_203 ();
 sg13cmos5l_fill_1 FILLER_5_21 ();
 sg13cmos5l_decap_8 FILLER_5_226 ();
 sg13cmos5l_decap_4 FILLER_5_233 ();
 sg13cmos5l_decap_8 FILLER_5_242 ();
 sg13cmos5l_decap_8 FILLER_5_249 ();
 sg13cmos5l_decap_8 FILLER_5_256 ();
 sg13cmos5l_decap_4 FILLER_5_26 ();
 sg13cmos5l_decap_4 FILLER_5_263 ();
 sg13cmos5l_decap_8 FILLER_5_286 ();
 sg13cmos5l_fill_2 FILLER_5_293 ();
 sg13cmos5l_fill_1 FILLER_5_295 ();
 sg13cmos5l_fill_2 FILLER_5_30 ();
 sg13cmos5l_decap_8 FILLER_5_51 ();
 sg13cmos5l_decap_8 FILLER_5_58 ();
 sg13cmos5l_fill_1 FILLER_5_65 ();
 sg13cmos5l_decap_4 FILLER_5_70 ();
 sg13cmos5l_fill_2 FILLER_5_74 ();
 sg13cmos5l_decap_8 FILLER_5_95 ();
 sg13cmos5l_decap_8 FILLER_6_123 ();
 sg13cmos5l_fill_2 FILLER_6_130 ();
 sg13cmos5l_fill_1 FILLER_6_132 ();
 sg13cmos5l_decap_8 FILLER_6_149 ();
 sg13cmos5l_fill_2 FILLER_6_156 ();
 sg13cmos5l_decap_8 FILLER_6_19 ();
 sg13cmos5l_decap_8 FILLER_6_196 ();
 sg13cmos5l_decap_4 FILLER_6_203 ();
 sg13cmos5l_fill_2 FILLER_6_207 ();
 sg13cmos5l_fill_2 FILLER_6_228 ();
 sg13cmos5l_fill_1 FILLER_6_230 ();
 sg13cmos5l_fill_2 FILLER_6_234 ();
 sg13cmos5l_fill_1 FILLER_6_236 ();
 sg13cmos5l_fill_2 FILLER_6_243 ();
 sg13cmos5l_fill_1 FILLER_6_245 ();
 sg13cmos5l_decap_4 FILLER_6_26 ();
 sg13cmos5l_decap_4 FILLER_6_265 ();
 sg13cmos5l_fill_1 FILLER_6_269 ();
 sg13cmos5l_decap_8 FILLER_6_289 ();
 sg13cmos5l_fill_2 FILLER_6_30 ();
 sg13cmos5l_decap_8 FILLER_6_51 ();
 sg13cmos5l_fill_2 FILLER_6_58 ();
 sg13cmos5l_fill_2 FILLER_6_76 ();
 sg13cmos5l_decap_8 FILLER_6_97 ();
 sg13cmos5l_decap_8 FILLER_7_123 ();
 sg13cmos5l_fill_2 FILLER_7_130 ();
 sg13cmos5l_fill_1 FILLER_7_132 ();
 sg13cmos5l_decap_8 FILLER_7_152 ();
 sg13cmos5l_decap_8 FILLER_7_159 ();
 sg13cmos5l_decap_8 FILLER_7_166 ();
 sg13cmos5l_decap_8 FILLER_7_173 ();
 sg13cmos5l_decap_8 FILLER_7_180 ();
 sg13cmos5l_decap_8 FILLER_7_187 ();
 sg13cmos5l_fill_2 FILLER_7_19 ();
 sg13cmos5l_fill_1 FILLER_7_194 ();
 sg13cmos5l_fill_1 FILLER_7_21 ();
 sg13cmos5l_decap_4 FILLER_7_214 ();
 sg13cmos5l_decap_8 FILLER_7_228 ();
 sg13cmos5l_fill_2 FILLER_7_235 ();
 sg13cmos5l_decap_4 FILLER_7_241 ();
 sg13cmos5l_fill_1 FILLER_7_245 ();
 sg13cmos5l_fill_2 FILLER_7_26 ();
 sg13cmos5l_fill_1 FILLER_7_28 ();
 sg13cmos5l_decap_8 FILLER_7_284 ();
 sg13cmos5l_decap_4 FILLER_7_291 ();
 sg13cmos5l_fill_1 FILLER_7_295 ();
 sg13cmos5l_decap_4 FILLER_7_48 ();
 sg13cmos5l_fill_2 FILLER_7_52 ();
 sg13cmos5l_decap_8 FILLER_7_73 ();
 sg13cmos5l_decap_4 FILLER_7_80 ();
 sg13cmos5l_fill_1 FILLER_7_84 ();
 sg13cmos5l_decap_8 FILLER_8_115 ();
 sg13cmos5l_decap_8 FILLER_8_122 ();
 sg13cmos5l_decap_8 FILLER_8_129 ();
 sg13cmos5l_fill_2 FILLER_8_136 ();
 sg13cmos5l_fill_1 FILLER_8_138 ();
 sg13cmos5l_decap_8 FILLER_8_158 ();
 sg13cmos5l_fill_1 FILLER_8_165 ();
 sg13cmos5l_decap_8 FILLER_8_185 ();
 sg13cmos5l_decap_8 FILLER_8_19 ();
 sg13cmos5l_fill_2 FILLER_8_192 ();
 sg13cmos5l_fill_1 FILLER_8_194 ();
 sg13cmos5l_decap_8 FILLER_8_214 ();
 sg13cmos5l_decap_8 FILLER_8_221 ();
 sg13cmos5l_decap_8 FILLER_8_228 ();
 sg13cmos5l_fill_2 FILLER_8_235 ();
 sg13cmos5l_fill_1 FILLER_8_237 ();
 sg13cmos5l_decap_8 FILLER_8_257 ();
 sg13cmos5l_decap_8 FILLER_8_26 ();
 sg13cmos5l_decap_8 FILLER_8_264 ();
 sg13cmos5l_fill_2 FILLER_8_271 ();
 sg13cmos5l_decap_4 FILLER_8_292 ();
 sg13cmos5l_fill_2 FILLER_8_33 ();
 sg13cmos5l_fill_1 FILLER_8_35 ();
 sg13cmos5l_decap_8 FILLER_8_55 ();
 sg13cmos5l_decap_8 FILLER_8_62 ();
 sg13cmos5l_decap_8 FILLER_8_69 ();
 sg13cmos5l_fill_1 FILLER_8_76 ();
 sg13cmos5l_fill_2 FILLER_9_102 ();
 sg13cmos5l_decap_8 FILLER_9_123 ();
 sg13cmos5l_fill_2 FILLER_9_130 ();
 sg13cmos5l_fill_1 FILLER_9_132 ();
 sg13cmos5l_decap_8 FILLER_9_152 ();
 sg13cmos5l_decap_8 FILLER_9_159 ();
 sg13cmos5l_fill_2 FILLER_9_19 ();
 sg13cmos5l_decap_4 FILLER_9_204 ();
 sg13cmos5l_fill_1 FILLER_9_208 ();
 sg13cmos5l_fill_1 FILLER_9_21 ();
 sg13cmos5l_decap_8 FILLER_9_228 ();
 sg13cmos5l_fill_2 FILLER_9_235 ();
 sg13cmos5l_decap_8 FILLER_9_256 ();
 sg13cmos5l_fill_2 FILLER_9_26 ();
 sg13cmos5l_decap_4 FILLER_9_263 ();
 sg13cmos5l_fill_1 FILLER_9_28 ();
 sg13cmos5l_decap_4 FILLER_9_290 ();
 sg13cmos5l_fill_2 FILLER_9_294 ();
 sg13cmos5l_decap_4 FILLER_9_48 ();
 sg13cmos5l_decap_4 FILLER_9_71 ();
 sg13cmos5l_fill_1 FILLER_9_75 ();
 sg13cmos5l_decap_8 FILLER_9_95 ();
 sg13cmos5l_and2_1 _08_ (.A(net2),
    .B(net10),
    .X(_01_));
 sg13cmos5l_and2_1 _09_ (.A(net3),
    .B(net11),
    .X(_02_));
 sg13cmos5l_and2_1 _10_ (.A(net4),
    .B(net12),
    .X(_03_));
 sg13cmos5l_and2_1 _11_ (.A(net5),
    .B(net13),
    .X(_04_));
 sg13cmos5l_and2_1 _12_ (.A(net6),
    .B(net14),
    .X(_05_));
 sg13cmos5l_and2_1 _13_ (.A(net7),
    .B(net15),
    .X(_06_));
 sg13cmos5l_and2_1 _14_ (.A(net8),
    .B(net16),
    .X(_07_));
 sg13cmos5l_and2_1 _15_ (.A(net1),
    .B(net9),
    .X(_00_));
 sg13cmos5l_inv_1 \genblk1[0].i_inv1  (.Y(\genblk1[0].n1 ),
    .A(_00_));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16  (.A(\genblk1[0].n4 ),
    .Y(\genblk1[0].n5 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16b  (.A(\genblk1[0].n5 ),
    .Y(\genblk1[0].n6 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16c  (.A(\genblk1[0].n5 ),
    .Y(\genblk1[0].n7 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16d  (.A(\genblk1[0].n6 ),
    .Y(\genblk1[0].n8 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16e  (.A(\genblk1[0].n6 ),
    .Y(\genblk1[0].n9 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16f  (.A(\genblk1[0].n7 ),
    .Y(\genblk1[0].n10 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16g  (.A(\genblk1[0].n7 ),
    .Y(\genblk1[0].n11 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16h  (.A(\genblk1[0].n8 ),
    .Y(\genblk1[0].n12 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16i  (.A(\genblk1[0].n8 ),
    .Y(\genblk1[0].n13 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16j  (.A(\genblk1[0].n9 ),
    .Y(\genblk1[0].n14 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16k  (.A(\genblk1[0].n9 ),
    .Y(\genblk1[0].n15 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16l  (.A(\genblk1[0].n10 ),
    .Y(\genblk1[0].n16 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16m  (.A(\genblk1[0].n10 ),
    .Y(\genblk1[0].n17 ));
 sg13cmos5l_inv_16 \genblk1[0].i_inv16n  (.A(\genblk1[0].n11 ),
    .Y(\genblk1[0].n18 ));
 sg13cmos5l_inv_2 \genblk1[0].i_inv2  (.Y(\genblk1[0].n2 ),
    .A(\genblk1[0].n1 ));
 sg13cmos5l_inv_4 \genblk1[0].i_inv4  (.A(\genblk1[0].n2 ),
    .Y(\genblk1[0].n3 ));
 sg13cmos5l_inv_8 \genblk1[0].i_inv8  (.Y(\genblk1[0].n4 ),
    .A(\genblk1[0].n3 ));
 sg13cmos5l_inv_1 \genblk1[1].i_inv1  (.Y(\genblk1[1].n1 ),
    .A(_01_));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16  (.A(\genblk1[1].n4 ),
    .Y(\genblk1[1].n5 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16b  (.A(\genblk1[1].n5 ),
    .Y(\genblk1[1].n6 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16c  (.A(\genblk1[1].n5 ),
    .Y(\genblk1[1].n7 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16d  (.A(\genblk1[1].n6 ),
    .Y(\genblk1[1].n8 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16e  (.A(\genblk1[1].n6 ),
    .Y(\genblk1[1].n9 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16f  (.A(\genblk1[1].n7 ),
    .Y(\genblk1[1].n10 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16g  (.A(\genblk1[1].n7 ),
    .Y(\genblk1[1].n11 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16h  (.A(\genblk1[1].n8 ),
    .Y(\genblk1[1].n12 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16i  (.A(\genblk1[1].n8 ),
    .Y(\genblk1[1].n13 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16j  (.A(\genblk1[1].n9 ),
    .Y(\genblk1[1].n14 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16k  (.A(\genblk1[1].n9 ),
    .Y(\genblk1[1].n15 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16l  (.A(\genblk1[1].n10 ),
    .Y(\genblk1[1].n16 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16m  (.A(\genblk1[1].n10 ),
    .Y(\genblk1[1].n17 ));
 sg13cmos5l_inv_16 \genblk1[1].i_inv16n  (.A(\genblk1[1].n11 ),
    .Y(\genblk1[1].n18 ));
 sg13cmos5l_inv_2 \genblk1[1].i_inv2  (.Y(\genblk1[1].n2 ),
    .A(\genblk1[1].n1 ));
 sg13cmos5l_inv_4 \genblk1[1].i_inv4  (.A(\genblk1[1].n2 ),
    .Y(\genblk1[1].n3 ));
 sg13cmos5l_inv_8 \genblk1[1].i_inv8  (.Y(\genblk1[1].n4 ),
    .A(\genblk1[1].n3 ));
 sg13cmos5l_inv_1 \genblk1[2].i_inv1  (.Y(\genblk1[2].n1 ),
    .A(_02_));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16  (.A(\genblk1[2].n4 ),
    .Y(\genblk1[2].n5 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16b  (.A(\genblk1[2].n5 ),
    .Y(\genblk1[2].n6 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16c  (.A(\genblk1[2].n5 ),
    .Y(\genblk1[2].n7 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16d  (.A(\genblk1[2].n6 ),
    .Y(\genblk1[2].n8 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16e  (.A(\genblk1[2].n6 ),
    .Y(\genblk1[2].n9 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16f  (.A(\genblk1[2].n7 ),
    .Y(\genblk1[2].n10 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16g  (.A(\genblk1[2].n7 ),
    .Y(\genblk1[2].n11 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16h  (.A(\genblk1[2].n8 ),
    .Y(\genblk1[2].n12 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16i  (.A(\genblk1[2].n8 ),
    .Y(\genblk1[2].n13 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16j  (.A(\genblk1[2].n9 ),
    .Y(\genblk1[2].n14 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16k  (.A(\genblk1[2].n9 ),
    .Y(\genblk1[2].n15 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16l  (.A(\genblk1[2].n10 ),
    .Y(\genblk1[2].n16 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16m  (.A(\genblk1[2].n10 ),
    .Y(\genblk1[2].n17 ));
 sg13cmos5l_inv_16 \genblk1[2].i_inv16n  (.A(\genblk1[2].n11 ),
    .Y(\genblk1[2].n18 ));
 sg13cmos5l_inv_2 \genblk1[2].i_inv2  (.Y(\genblk1[2].n2 ),
    .A(\genblk1[2].n1 ));
 sg13cmos5l_inv_4 \genblk1[2].i_inv4  (.A(\genblk1[2].n2 ),
    .Y(\genblk1[2].n3 ));
 sg13cmos5l_inv_8 \genblk1[2].i_inv8  (.Y(\genblk1[2].n4 ),
    .A(\genblk1[2].n3 ));
 sg13cmos5l_inv_1 \genblk1[3].i_inv1  (.Y(\genblk1[3].n1 ),
    .A(_03_));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16  (.A(\genblk1[3].n4 ),
    .Y(\genblk1[3].n5 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16b  (.A(\genblk1[3].n5 ),
    .Y(\genblk1[3].n6 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16c  (.A(\genblk1[3].n5 ),
    .Y(\genblk1[3].n7 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16d  (.A(\genblk1[3].n6 ),
    .Y(\genblk1[3].n8 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16e  (.A(\genblk1[3].n6 ),
    .Y(\genblk1[3].n9 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16f  (.A(\genblk1[3].n7 ),
    .Y(\genblk1[3].n10 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16g  (.A(\genblk1[3].n7 ),
    .Y(\genblk1[3].n11 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16h  (.A(\genblk1[3].n8 ),
    .Y(\genblk1[3].n12 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16i  (.A(\genblk1[3].n8 ),
    .Y(\genblk1[3].n13 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16j  (.A(\genblk1[3].n9 ),
    .Y(\genblk1[3].n14 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16k  (.A(\genblk1[3].n9 ),
    .Y(\genblk1[3].n15 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16l  (.A(\genblk1[3].n10 ),
    .Y(\genblk1[3].n16 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16m  (.A(\genblk1[3].n10 ),
    .Y(\genblk1[3].n17 ));
 sg13cmos5l_inv_16 \genblk1[3].i_inv16n  (.A(\genblk1[3].n11 ),
    .Y(\genblk1[3].n18 ));
 sg13cmos5l_inv_2 \genblk1[3].i_inv2  (.Y(\genblk1[3].n2 ),
    .A(\genblk1[3].n1 ));
 sg13cmos5l_inv_4 \genblk1[3].i_inv4  (.A(\genblk1[3].n2 ),
    .Y(\genblk1[3].n3 ));
 sg13cmos5l_inv_8 \genblk1[3].i_inv8  (.Y(\genblk1[3].n4 ),
    .A(\genblk1[3].n3 ));
 sg13cmos5l_inv_1 \genblk1[4].i_inv1  (.Y(\genblk1[4].n1 ),
    .A(_04_));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16  (.A(\genblk1[4].n4 ),
    .Y(\genblk1[4].n5 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16b  (.A(\genblk1[4].n5 ),
    .Y(\genblk1[4].n6 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16c  (.A(\genblk1[4].n5 ),
    .Y(\genblk1[4].n7 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16d  (.A(\genblk1[4].n6 ),
    .Y(\genblk1[4].n8 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16e  (.A(\genblk1[4].n6 ),
    .Y(\genblk1[4].n9 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16f  (.A(\genblk1[4].n7 ),
    .Y(\genblk1[4].n10 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16g  (.A(\genblk1[4].n7 ),
    .Y(\genblk1[4].n11 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16h  (.A(\genblk1[4].n8 ),
    .Y(\genblk1[4].n12 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16i  (.A(\genblk1[4].n8 ),
    .Y(\genblk1[4].n13 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16j  (.A(\genblk1[4].n9 ),
    .Y(\genblk1[4].n14 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16k  (.A(\genblk1[4].n9 ),
    .Y(\genblk1[4].n15 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16l  (.A(\genblk1[4].n10 ),
    .Y(\genblk1[4].n16 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16m  (.A(\genblk1[4].n10 ),
    .Y(\genblk1[4].n17 ));
 sg13cmos5l_inv_16 \genblk1[4].i_inv16n  (.A(\genblk1[4].n11 ),
    .Y(\genblk1[4].n18 ));
 sg13cmos5l_inv_2 \genblk1[4].i_inv2  (.Y(\genblk1[4].n2 ),
    .A(\genblk1[4].n1 ));
 sg13cmos5l_inv_4 \genblk1[4].i_inv4  (.A(\genblk1[4].n2 ),
    .Y(\genblk1[4].n3 ));
 sg13cmos5l_inv_8 \genblk1[4].i_inv8  (.Y(\genblk1[4].n4 ),
    .A(\genblk1[4].n3 ));
 sg13cmos5l_inv_1 \genblk1[5].i_inv1  (.Y(\genblk1[5].n1 ),
    .A(_05_));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16  (.A(\genblk1[5].n4 ),
    .Y(\genblk1[5].n5 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16b  (.A(\genblk1[5].n5 ),
    .Y(\genblk1[5].n6 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16c  (.A(\genblk1[5].n5 ),
    .Y(\genblk1[5].n7 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16d  (.A(\genblk1[5].n6 ),
    .Y(\genblk1[5].n8 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16e  (.A(\genblk1[5].n6 ),
    .Y(\genblk1[5].n9 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16f  (.A(\genblk1[5].n7 ),
    .Y(\genblk1[5].n10 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16g  (.A(\genblk1[5].n7 ),
    .Y(\genblk1[5].n11 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16h  (.A(\genblk1[5].n8 ),
    .Y(\genblk1[5].n12 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16i  (.A(\genblk1[5].n8 ),
    .Y(\genblk1[5].n13 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16j  (.A(\genblk1[5].n9 ),
    .Y(\genblk1[5].n14 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16k  (.A(\genblk1[5].n9 ),
    .Y(\genblk1[5].n15 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16l  (.A(\genblk1[5].n10 ),
    .Y(\genblk1[5].n16 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16m  (.A(\genblk1[5].n10 ),
    .Y(\genblk1[5].n17 ));
 sg13cmos5l_inv_16 \genblk1[5].i_inv16n  (.A(\genblk1[5].n11 ),
    .Y(\genblk1[5].n18 ));
 sg13cmos5l_inv_2 \genblk1[5].i_inv2  (.Y(\genblk1[5].n2 ),
    .A(\genblk1[5].n1 ));
 sg13cmos5l_inv_4 \genblk1[5].i_inv4  (.A(\genblk1[5].n2 ),
    .Y(\genblk1[5].n3 ));
 sg13cmos5l_inv_8 \genblk1[5].i_inv8  (.Y(\genblk1[5].n4 ),
    .A(\genblk1[5].n3 ));
 sg13cmos5l_inv_1 \genblk1[6].i_inv1  (.Y(\genblk1[6].n1 ),
    .A(_06_));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16  (.A(\genblk1[6].n4 ),
    .Y(\genblk1[6].n5 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16b  (.A(\genblk1[6].n5 ),
    .Y(\genblk1[6].n6 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16c  (.A(\genblk1[6].n5 ),
    .Y(\genblk1[6].n7 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16d  (.A(\genblk1[6].n6 ),
    .Y(\genblk1[6].n8 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16e  (.A(\genblk1[6].n6 ),
    .Y(\genblk1[6].n9 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16f  (.A(\genblk1[6].n7 ),
    .Y(\genblk1[6].n10 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16g  (.A(\genblk1[6].n7 ),
    .Y(\genblk1[6].n11 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16h  (.A(\genblk1[6].n8 ),
    .Y(\genblk1[6].n12 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16i  (.A(\genblk1[6].n8 ),
    .Y(\genblk1[6].n13 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16j  (.A(\genblk1[6].n9 ),
    .Y(\genblk1[6].n14 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16k  (.A(\genblk1[6].n9 ),
    .Y(\genblk1[6].n15 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16l  (.A(\genblk1[6].n10 ),
    .Y(\genblk1[6].n16 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16m  (.A(\genblk1[6].n10 ),
    .Y(\genblk1[6].n17 ));
 sg13cmos5l_inv_16 \genblk1[6].i_inv16n  (.A(\genblk1[6].n11 ),
    .Y(\genblk1[6].n18 ));
 sg13cmos5l_inv_2 \genblk1[6].i_inv2  (.Y(\genblk1[6].n2 ),
    .A(\genblk1[6].n1 ));
 sg13cmos5l_inv_4 \genblk1[6].i_inv4  (.A(\genblk1[6].n2 ),
    .Y(\genblk1[6].n3 ));
 sg13cmos5l_inv_8 \genblk1[6].i_inv8  (.Y(\genblk1[6].n4 ),
    .A(\genblk1[6].n3 ));
 sg13cmos5l_inv_1 \genblk1[7].i_inv1  (.Y(\genblk1[7].n1 ),
    .A(_07_));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16  (.A(\genblk1[7].n4 ),
    .Y(\genblk1[7].n5 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16b  (.A(\genblk1[7].n5 ),
    .Y(\genblk1[7].n6 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16c  (.A(\genblk1[7].n5 ),
    .Y(\genblk1[7].n7 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16d  (.A(\genblk1[7].n6 ),
    .Y(\genblk1[7].n8 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16e  (.A(\genblk1[7].n6 ),
    .Y(\genblk1[7].n9 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16f  (.A(\genblk1[7].n7 ),
    .Y(\genblk1[7].n10 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16g  (.A(\genblk1[7].n7 ),
    .Y(\genblk1[7].n11 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16h  (.A(\genblk1[7].n8 ),
    .Y(\genblk1[7].n12 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16i  (.A(\genblk1[7].n8 ),
    .Y(\genblk1[7].n13 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16j  (.A(\genblk1[7].n9 ),
    .Y(\genblk1[7].n14 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16k  (.A(\genblk1[7].n9 ),
    .Y(\genblk1[7].n15 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16l  (.A(\genblk1[7].n10 ),
    .Y(\genblk1[7].n16 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16m  (.A(\genblk1[7].n10 ),
    .Y(\genblk1[7].n17 ));
 sg13cmos5l_inv_16 \genblk1[7].i_inv16n  (.A(\genblk1[7].n11 ),
    .Y(\genblk1[7].n18 ));
 sg13cmos5l_inv_2 \genblk1[7].i_inv2  (.Y(\genblk1[7].n2 ),
    .A(\genblk1[7].n1 ));
 sg13cmos5l_inv_4 \genblk1[7].i_inv4  (.A(\genblk1[7].n2 ),
    .Y(\genblk1[7].n3 ));
 sg13cmos5l_inv_8 \genblk1[7].i_inv8  (.Y(\genblk1[7].n4 ),
    .A(\genblk1[7].n3 ));
 sg13cmos5l_buf_1 input1 (.A(en[0]),
    .X(net1));
 sg13cmos5l_buf_1 input10 (.A(osc[1]),
    .X(net10));
 sg13cmos5l_buf_1 input11 (.A(osc[2]),
    .X(net11));
 sg13cmos5l_buf_1 input12 (.A(osc[3]),
    .X(net12));
 sg13cmos5l_buf_1 input13 (.A(osc[4]),
    .X(net13));
 sg13cmos5l_buf_1 input14 (.A(osc[5]),
    .X(net14));
 sg13cmos5l_buf_1 input15 (.A(osc[6]),
    .X(net15));
 sg13cmos5l_buf_1 input16 (.A(osc[7]),
    .X(net16));
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
 sg13cmos5l_buf_1 input9 (.A(osc[0]),
    .X(net9));
endmodule
