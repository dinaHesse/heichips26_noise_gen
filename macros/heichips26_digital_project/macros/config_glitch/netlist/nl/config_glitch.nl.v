module config_glitch (enable,
    glitch_en,
    out_xor);
 input enable;
 input [6:0] glitch_en;
 output [7:0] out_xor;

 wire \genblk1[0].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[0].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[0].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[0].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[0].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[0].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[0].genblk1.glitch_inst.out_xor ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[1].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[1].genblk1.glitch_inst.in_buf ;
 wire \genblk1[1].genblk1.glitch_inst.out_xor ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[2].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[2].genblk1.glitch_inst.in_buf ;
 wire \genblk1[2].genblk1.glitch_inst.out_xor ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[3].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[3].genblk1.glitch_inst.in_buf ;
 wire \genblk1[3].genblk1.glitch_inst.out_xor ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[4].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[4].genblk1.glitch_inst.in_buf ;
 wire \genblk1[4].genblk1.glitch_inst.out_xor ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[0] ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[1] ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[5].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[5].genblk1.glitch_inst.in_buf ;
 wire \genblk1[5].genblk1.glitch_inst.out_xor ;
 wire net17;
 wire \genblk1[6].genblk1.glitch_inst.in_buf ;
 wire \genblk1[6].genblk1.glitch_inst.out_xor ;
 wire net16;
 wire \genblk1[7].genblk1.glitch_inst.buffer_out[2] ;
 wire \genblk1[7].genblk1.glitch_inst.buffer_out[3] ;
 wire \genblk1[7].genblk1.glitch_inst.buffer_out[4] ;
 wire \genblk1[7].genblk1.glitch_inst.buffer_out[5] ;
 wire \genblk1[7].genblk1.glitch_inst.in_buf ;
 wire \genblk1[7].genblk1.glitch_inst.out_xor ;
 wire net1;
 wire net2;
 wire net3;
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
 wire net14;

 sg13cmos5l_decap_8 FILLER_0_0 ();
 sg13cmos5l_decap_8 FILLER_0_104 ();
 sg13cmos5l_decap_8 FILLER_0_111 ();
 sg13cmos5l_decap_8 FILLER_0_118 ();
 sg13cmos5l_decap_8 FILLER_0_125 ();
 sg13cmos5l_decap_8 FILLER_0_132 ();
 sg13cmos5l_decap_8 FILLER_0_139 ();
 sg13cmos5l_decap_8 FILLER_0_14 ();
 sg13cmos5l_decap_4 FILLER_0_146 ();
 sg13cmos5l_decap_8 FILLER_0_21 ();
 sg13cmos5l_decap_8 FILLER_0_28 ();
 sg13cmos5l_decap_8 FILLER_0_35 ();
 sg13cmos5l_fill_2 FILLER_0_42 ();
 sg13cmos5l_decap_8 FILLER_0_69 ();
 sg13cmos5l_decap_8 FILLER_0_7 ();
 sg13cmos5l_decap_8 FILLER_0_76 ();
 sg13cmos5l_decap_8 FILLER_0_83 ();
 sg13cmos5l_decap_8 FILLER_0_90 ();
 sg13cmos5l_decap_8 FILLER_0_97 ();
 sg13cmos5l_decap_8 FILLER_10_0 ();
 sg13cmos5l_decap_8 FILLER_10_123 ();
 sg13cmos5l_fill_2 FILLER_10_130 ();
 sg13cmos5l_fill_1 FILLER_10_132 ();
 sg13cmos5l_decap_8 FILLER_10_14 ();
 sg13cmos5l_decap_4 FILLER_10_145 ();
 sg13cmos5l_fill_1 FILLER_10_149 ();
 sg13cmos5l_decap_8 FILLER_10_21 ();
 sg13cmos5l_fill_1 FILLER_10_28 ();
 sg13cmos5l_decap_8 FILLER_10_54 ();
 sg13cmos5l_decap_8 FILLER_10_7 ();
 sg13cmos5l_decap_4 FILLER_10_86 ();
 sg13cmos5l_decap_8 FILLER_11_0 ();
 sg13cmos5l_decap_8 FILLER_11_101 ();
 sg13cmos5l_decap_8 FILLER_11_108 ();
 sg13cmos5l_decap_8 FILLER_11_115 ();
 sg13cmos5l_decap_8 FILLER_11_122 ();
 sg13cmos5l_decap_4 FILLER_11_129 ();
 sg13cmos5l_fill_2 FILLER_11_133 ();
 sg13cmos5l_decap_8 FILLER_11_139 ();
 sg13cmos5l_decap_8 FILLER_11_14 ();
 sg13cmos5l_decap_8 FILLER_11_21 ();
 sg13cmos5l_fill_1 FILLER_11_28 ();
 sg13cmos5l_decap_8 FILLER_11_7 ();
 sg13cmos5l_decap_8 FILLER_11_87 ();
 sg13cmos5l_decap_8 FILLER_11_94 ();
 sg13cmos5l_decap_8 FILLER_12_0 ();
 sg13cmos5l_decap_8 FILLER_12_101 ();
 sg13cmos5l_decap_8 FILLER_12_108 ();
 sg13cmos5l_decap_8 FILLER_12_115 ();
 sg13cmos5l_decap_8 FILLER_12_122 ();
 sg13cmos5l_decap_4 FILLER_12_129 ();
 sg13cmos5l_decap_8 FILLER_12_14 ();
 sg13cmos5l_decap_8 FILLER_12_143 ();
 sg13cmos5l_decap_8 FILLER_12_21 ();
 sg13cmos5l_decap_8 FILLER_12_28 ();
 sg13cmos5l_fill_2 FILLER_12_35 ();
 sg13cmos5l_decap_8 FILLER_12_7 ();
 sg13cmos5l_decap_8 FILLER_12_87 ();
 sg13cmos5l_decap_8 FILLER_12_94 ();
 sg13cmos5l_decap_8 FILLER_13_0 ();
 sg13cmos5l_decap_8 FILLER_13_100 ();
 sg13cmos5l_decap_8 FILLER_13_107 ();
 sg13cmos5l_decap_8 FILLER_13_114 ();
 sg13cmos5l_decap_8 FILLER_13_121 ();
 sg13cmos5l_decap_8 FILLER_13_128 ();
 sg13cmos5l_decap_8 FILLER_13_135 ();
 sg13cmos5l_decap_8 FILLER_13_14 ();
 sg13cmos5l_decap_4 FILLER_13_142 ();
 sg13cmos5l_decap_8 FILLER_13_21 ();
 sg13cmos5l_fill_1 FILLER_13_28 ();
 sg13cmos5l_decap_8 FILLER_13_7 ();
 sg13cmos5l_decap_8 FILLER_13_79 ();
 sg13cmos5l_decap_8 FILLER_13_86 ();
 sg13cmos5l_decap_8 FILLER_13_93 ();
 sg13cmos5l_decap_8 FILLER_14_0 ();
 sg13cmos5l_decap_8 FILLER_14_105 ();
 sg13cmos5l_decap_8 FILLER_14_112 ();
 sg13cmos5l_decap_8 FILLER_14_119 ();
 sg13cmos5l_decap_8 FILLER_14_126 ();
 sg13cmos5l_decap_8 FILLER_14_14 ();
 sg13cmos5l_decap_4 FILLER_14_145 ();
 sg13cmos5l_fill_1 FILLER_14_149 ();
 sg13cmos5l_decap_8 FILLER_14_21 ();
 sg13cmos5l_decap_8 FILLER_14_28 ();
 sg13cmos5l_decap_8 FILLER_14_35 ();
 sg13cmos5l_fill_2 FILLER_14_42 ();
 sg13cmos5l_fill_1 FILLER_14_44 ();
 sg13cmos5l_decap_8 FILLER_14_7 ();
 sg13cmos5l_decap_8 FILLER_14_70 ();
 sg13cmos5l_decap_8 FILLER_14_77 ();
 sg13cmos5l_decap_8 FILLER_14_84 ();
 sg13cmos5l_decap_8 FILLER_14_91 ();
 sg13cmos5l_decap_8 FILLER_14_98 ();
 sg13cmos5l_decap_8 FILLER_15_0 ();
 sg13cmos5l_decap_8 FILLER_15_103 ();
 sg13cmos5l_decap_8 FILLER_15_110 ();
 sg13cmos5l_fill_2 FILLER_15_117 ();
 sg13cmos5l_decap_8 FILLER_15_123 ();
 sg13cmos5l_decap_8 FILLER_15_130 ();
 sg13cmos5l_decap_8 FILLER_15_137 ();
 sg13cmos5l_decap_8 FILLER_15_14 ();
 sg13cmos5l_decap_4 FILLER_15_144 ();
 sg13cmos5l_fill_2 FILLER_15_148 ();
 sg13cmos5l_decap_8 FILLER_15_21 ();
 sg13cmos5l_fill_1 FILLER_15_28 ();
 sg13cmos5l_decap_8 FILLER_15_68 ();
 sg13cmos5l_decap_8 FILLER_15_7 ();
 sg13cmos5l_decap_8 FILLER_15_75 ();
 sg13cmos5l_decap_8 FILLER_15_82 ();
 sg13cmos5l_decap_8 FILLER_15_89 ();
 sg13cmos5l_decap_8 FILLER_15_96 ();
 sg13cmos5l_decap_8 FILLER_16_0 ();
 sg13cmos5l_decap_8 FILLER_16_123 ();
 sg13cmos5l_fill_2 FILLER_16_130 ();
 sg13cmos5l_fill_1 FILLER_16_132 ();
 sg13cmos5l_decap_8 FILLER_16_139 ();
 sg13cmos5l_decap_8 FILLER_16_14 ();
 sg13cmos5l_decap_8 FILLER_16_21 ();
 sg13cmos5l_decap_4 FILLER_16_28 ();
 sg13cmos5l_fill_1 FILLER_16_32 ();
 sg13cmos5l_decap_8 FILLER_16_58 ();
 sg13cmos5l_decap_8 FILLER_16_65 ();
 sg13cmos5l_decap_8 FILLER_16_7 ();
 sg13cmos5l_fill_1 FILLER_16_97 ();
 sg13cmos5l_decap_8 FILLER_17_0 ();
 sg13cmos5l_fill_2 FILLER_17_11 ();
 sg13cmos5l_fill_2 FILLER_17_113 ();
 sg13cmos5l_decap_8 FILLER_17_123 ();
 sg13cmos5l_decap_8 FILLER_17_130 ();
 sg13cmos5l_decap_8 FILLER_17_137 ();
 sg13cmos5l_decap_4 FILLER_17_144 ();
 sg13cmos5l_fill_2 FILLER_17_148 ();
 sg13cmos5l_decap_8 FILLER_17_19 ();
 sg13cmos5l_decap_8 FILLER_17_26 ();
 sg13cmos5l_fill_1 FILLER_17_33 ();
 sg13cmos5l_decap_4 FILLER_17_7 ();
 sg13cmos5l_decap_8 FILLER_18_0 ();
 sg13cmos5l_decap_8 FILLER_18_101 ();
 sg13cmos5l_decap_8 FILLER_18_108 ();
 sg13cmos5l_decap_8 FILLER_18_115 ();
 sg13cmos5l_decap_8 FILLER_18_122 ();
 sg13cmos5l_decap_4 FILLER_18_129 ();
 sg13cmos5l_decap_8 FILLER_18_13 ();
 sg13cmos5l_decap_4 FILLER_18_137 ();
 sg13cmos5l_fill_1 FILLER_18_145 ();
 sg13cmos5l_fill_2 FILLER_18_20 ();
 sg13cmos5l_fill_2 FILLER_18_26 ();
 sg13cmos5l_fill_1 FILLER_18_28 ();
 sg13cmos5l_decap_8 FILLER_18_58 ();
 sg13cmos5l_decap_4 FILLER_18_65 ();
 sg13cmos5l_fill_2 FILLER_18_7 ();
 sg13cmos5l_decap_8 FILLER_18_73 ();
 sg13cmos5l_decap_8 FILLER_18_80 ();
 sg13cmos5l_decap_8 FILLER_18_87 ();
 sg13cmos5l_decap_8 FILLER_18_94 ();
 sg13cmos5l_decap_8 FILLER_1_0 ();
 sg13cmos5l_decap_8 FILLER_1_101 ();
 sg13cmos5l_decap_8 FILLER_1_108 ();
 sg13cmos5l_decap_8 FILLER_1_115 ();
 sg13cmos5l_decap_8 FILLER_1_122 ();
 sg13cmos5l_decap_8 FILLER_1_129 ();
 sg13cmos5l_decap_8 FILLER_1_136 ();
 sg13cmos5l_decap_8 FILLER_1_14 ();
 sg13cmos5l_fill_2 FILLER_1_143 ();
 sg13cmos5l_fill_1 FILLER_1_145 ();
 sg13cmos5l_decap_8 FILLER_1_21 ();
 sg13cmos5l_decap_8 FILLER_1_28 ();
 sg13cmos5l_decap_8 FILLER_1_35 ();
 sg13cmos5l_decap_8 FILLER_1_42 ();
 sg13cmos5l_fill_1 FILLER_1_49 ();
 sg13cmos5l_decap_8 FILLER_1_7 ();
 sg13cmos5l_fill_1 FILLER_1_75 ();
 sg13cmos5l_decap_8 FILLER_1_80 ();
 sg13cmos5l_decap_8 FILLER_1_87 ();
 sg13cmos5l_decap_8 FILLER_1_94 ();
 sg13cmos5l_decap_8 FILLER_2_0 ();
 sg13cmos5l_decap_8 FILLER_2_102 ();
 sg13cmos5l_decap_8 FILLER_2_109 ();
 sg13cmos5l_decap_8 FILLER_2_116 ();
 sg13cmos5l_decap_8 FILLER_2_123 ();
 sg13cmos5l_decap_8 FILLER_2_130 ();
 sg13cmos5l_decap_8 FILLER_2_137 ();
 sg13cmos5l_decap_8 FILLER_2_14 ();
 sg13cmos5l_decap_4 FILLER_2_144 ();
 sg13cmos5l_fill_2 FILLER_2_148 ();
 sg13cmos5l_decap_8 FILLER_2_21 ();
 sg13cmos5l_fill_1 FILLER_2_28 ();
 sg13cmos5l_fill_1 FILLER_2_54 ();
 sg13cmos5l_decap_8 FILLER_2_7 ();
 sg13cmos5l_decap_8 FILLER_2_88 ();
 sg13cmos5l_decap_8 FILLER_2_95 ();
 sg13cmos5l_decap_8 FILLER_3_0 ();
 sg13cmos5l_decap_8 FILLER_3_104 ();
 sg13cmos5l_decap_8 FILLER_3_111 ();
 sg13cmos5l_decap_8 FILLER_3_118 ();
 sg13cmos5l_decap_8 FILLER_3_125 ();
 sg13cmos5l_decap_8 FILLER_3_132 ();
 sg13cmos5l_decap_8 FILLER_3_139 ();
 sg13cmos5l_decap_8 FILLER_3_14 ();
 sg13cmos5l_decap_8 FILLER_3_21 ();
 sg13cmos5l_fill_1 FILLER_3_28 ();
 sg13cmos5l_decap_8 FILLER_3_7 ();
 sg13cmos5l_decap_8 FILLER_4_0 ();
 sg13cmos5l_decap_8 FILLER_4_123 ();
 sg13cmos5l_decap_4 FILLER_4_130 ();
 sg13cmos5l_fill_1 FILLER_4_134 ();
 sg13cmos5l_decap_8 FILLER_4_139 ();
 sg13cmos5l_decap_8 FILLER_4_14 ();
 sg13cmos5l_decap_4 FILLER_4_146 ();
 sg13cmos5l_decap_8 FILLER_4_21 ();
 sg13cmos5l_fill_1 FILLER_4_28 ();
 sg13cmos5l_decap_8 FILLER_4_7 ();
 sg13cmos5l_decap_8 FILLER_4_79 ();
 sg13cmos5l_decap_8 FILLER_4_86 ();
 sg13cmos5l_decap_4 FILLER_4_93 ();
 sg13cmos5l_fill_1 FILLER_4_97 ();
 sg13cmos5l_decap_8 FILLER_5_0 ();
 sg13cmos5l_decap_8 FILLER_5_123 ();
 sg13cmos5l_decap_8 FILLER_5_130 ();
 sg13cmos5l_decap_8 FILLER_5_137 ();
 sg13cmos5l_decap_8 FILLER_5_14 ();
 sg13cmos5l_decap_4 FILLER_5_144 ();
 sg13cmos5l_fill_2 FILLER_5_148 ();
 sg13cmos5l_decap_8 FILLER_5_21 ();
 sg13cmos5l_fill_1 FILLER_5_28 ();
 sg13cmos5l_decap_8 FILLER_5_7 ();
 sg13cmos5l_decap_8 FILLER_5_79 ();
 sg13cmos5l_decap_8 FILLER_5_86 ();
 sg13cmos5l_decap_4 FILLER_5_93 ();
 sg13cmos5l_fill_1 FILLER_5_97 ();
 sg13cmos5l_decap_8 FILLER_6_0 ();
 sg13cmos5l_decap_8 FILLER_6_123 ();
 sg13cmos5l_decap_4 FILLER_6_130 ();
 sg13cmos5l_fill_1 FILLER_6_134 ();
 sg13cmos5l_decap_8 FILLER_6_139 ();
 sg13cmos5l_decap_8 FILLER_6_14 ();
 sg13cmos5l_decap_8 FILLER_6_21 ();
 sg13cmos5l_fill_2 FILLER_6_28 ();
 sg13cmos5l_fill_1 FILLER_6_30 ();
 sg13cmos5l_decap_4 FILLER_6_62 ();
 sg13cmos5l_decap_8 FILLER_6_7 ();
 sg13cmos5l_decap_8 FILLER_6_91 ();
 sg13cmos5l_decap_8 FILLER_7_0 ();
 sg13cmos5l_decap_8 FILLER_7_100 ();
 sg13cmos5l_decap_8 FILLER_7_107 ();
 sg13cmos5l_decap_8 FILLER_7_114 ();
 sg13cmos5l_decap_8 FILLER_7_121 ();
 sg13cmos5l_decap_8 FILLER_7_128 ();
 sg13cmos5l_decap_8 FILLER_7_135 ();
 sg13cmos5l_decap_8 FILLER_7_14 ();
 sg13cmos5l_decap_8 FILLER_7_142 ();
 sg13cmos5l_fill_1 FILLER_7_149 ();
 sg13cmos5l_decap_8 FILLER_7_21 ();
 sg13cmos5l_decap_8 FILLER_7_28 ();
 sg13cmos5l_decap_4 FILLER_7_35 ();
 sg13cmos5l_fill_2 FILLER_7_47 ();
 sg13cmos5l_fill_1 FILLER_7_49 ();
 sg13cmos5l_decap_8 FILLER_7_7 ();
 sg13cmos5l_decap_8 FILLER_8_0 ();
 sg13cmos5l_decap_8 FILLER_8_115 ();
 sg13cmos5l_decap_8 FILLER_8_122 ();
 sg13cmos5l_decap_8 FILLER_8_129 ();
 sg13cmos5l_decap_8 FILLER_8_136 ();
 sg13cmos5l_decap_8 FILLER_8_14 ();
 sg13cmos5l_fill_2 FILLER_8_143 ();
 sg13cmos5l_fill_1 FILLER_8_145 ();
 sg13cmos5l_decap_8 FILLER_8_21 ();
 sg13cmos5l_decap_8 FILLER_8_28 ();
 sg13cmos5l_decap_8 FILLER_8_35 ();
 sg13cmos5l_decap_4 FILLER_8_42 ();
 sg13cmos5l_fill_2 FILLER_8_46 ();
 sg13cmos5l_decap_8 FILLER_8_7 ();
 sg13cmos5l_decap_8 FILLER_8_73 ();
 sg13cmos5l_decap_8 FILLER_8_80 ();
 sg13cmos5l_fill_2 FILLER_8_87 ();
 sg13cmos5l_fill_1 FILLER_8_89 ();
 sg13cmos5l_decap_8 FILLER_9_0 ();
 sg13cmos5l_decap_8 FILLER_9_118 ();
 sg13cmos5l_decap_8 FILLER_9_125 ();
 sg13cmos5l_fill_2 FILLER_9_132 ();
 sg13cmos5l_fill_1 FILLER_9_134 ();
 sg13cmos5l_decap_8 FILLER_9_139 ();
 sg13cmos5l_decap_8 FILLER_9_14 ();
 sg13cmos5l_decap_4 FILLER_9_146 ();
 sg13cmos5l_decap_8 FILLER_9_21 ();
 sg13cmos5l_fill_1 FILLER_9_28 ();
 sg13cmos5l_decap_8 FILLER_9_54 ();
 sg13cmos5l_decap_8 FILLER_9_61 ();
 sg13cmos5l_fill_2 FILLER_9_68 ();
 sg13cmos5l_decap_8 FILLER_9_7 ();
 sg13cmos5l_fill_1 FILLER_9_70 ();
 sg13cmos5l_decap_8 FILLER_9_77 ();
 sg13cmos5l_fill_2 FILLER_9_84 ();
 sg13cmos5l_fill_1 FILLER_9_86 ();
 sg13cmos5l_and2_2 _00_ (.A(\genblk1[1].genblk1.glitch_inst.buffer_out[5] ),
    .B(net2),
    .X(\genblk1[2].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _01_ (.A(\genblk1[2].genblk1.glitch_inst.buffer_out[5] ),
    .B(net3),
    .X(\genblk1[3].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _02_ (.A(\genblk1[3].genblk1.glitch_inst.buffer_out[5] ),
    .B(net4),
    .X(\genblk1[4].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _03_ (.A(\genblk1[4].genblk1.glitch_inst.buffer_out[5] ),
    .B(net5),
    .X(\genblk1[5].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _04_ (.A(\genblk1[5].genblk1.glitch_inst.buffer_out[5] ),
    .B(net6),
    .X(\genblk1[6].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _05_ (.A(\genblk1[6].genblk1.glitch_inst.in_buf ),
    .B(net7),
    .X(\genblk1[7].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_and2_2 _06_ (.A(\genblk1[0].genblk1.glitch_inst.buffer_out[5] ),
    .B(net1),
    .X(\genblk1[1].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_1 _07_ (.A(\genblk1[0].genblk1.glitch_inst.out_xor ),
    .X(net8));
 sg13cmos5l_buf_1 _08_ (.A(\genblk1[1].genblk1.glitch_inst.out_xor ),
    .X(net9));
 sg13cmos5l_buf_1 _09_ (.A(\genblk1[2].genblk1.glitch_inst.out_xor ),
    .X(net10));
 sg13cmos5l_buf_1 _10_ (.A(\genblk1[3].genblk1.glitch_inst.out_xor ),
    .X(net11));
 sg13cmos5l_buf_1 _11_ (.A(\genblk1[4].genblk1.glitch_inst.out_xor ),
    .X(net12));
 sg13cmos5l_buf_1 _12_ (.A(\genblk1[5].genblk1.glitch_inst.out_xor ),
    .X(net13));
 sg13cmos5l_buf_1 _13_ (.A(\genblk1[6].genblk1.glitch_inst.out_xor ),
    .X(net14));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[0] ),
    .A(enable));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[0].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[0].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[0].genblk1.glitch_inst.xor_inst  (.B(\genblk1[0].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[0].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[0].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[0] ),
    .A(\genblk1[1].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[1].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[1].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[1].genblk1.glitch_inst.xor_inst  (.B(\genblk1[1].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[1].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[1].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[0] ),
    .A(\genblk1[2].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[2].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[2].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[2].genblk1.glitch_inst.xor_inst  (.B(\genblk1[2].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[2].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[2].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[0] ),
    .A(\genblk1[3].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[3].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[3].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[3].genblk1.glitch_inst.xor_inst  (.B(\genblk1[3].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[3].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[3].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[0] ),
    .A(\genblk1[4].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[4].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[4].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[4].genblk1.glitch_inst.xor_inst  (.B(\genblk1[4].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[4].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[4].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[0].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[0] ),
    .A(\genblk1[5].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[1].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[1] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[0] ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[1] ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[5].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[5].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[5].genblk1.glitch_inst.xor_inst  (.B(\genblk1[5].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[5].genblk1.glitch_inst.buffer_out[1] ),
    .X(\genblk1[5].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_xor2_1 \genblk1[6].genblk1.glitch_inst.xor_inst  (.B(\genblk1[6].genblk1.glitch_inst.in_buf ),
    .A(net17),
    .X(\genblk1[6].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_16 \genblk1[7].genblk1.glitch_inst.genblk1[2].genblk1.buffer_inst  (.X(\genblk1[7].genblk1.glitch_inst.buffer_out[2] ),
    .A(\genblk1[7].genblk1.glitch_inst.in_buf ));
 sg13cmos5l_buf_16 \genblk1[7].genblk1.glitch_inst.genblk1[3].genblk1.buffer_inst  (.X(\genblk1[7].genblk1.glitch_inst.buffer_out[3] ),
    .A(\genblk1[7].genblk1.glitch_inst.buffer_out[2] ));
 sg13cmos5l_buf_16 \genblk1[7].genblk1.glitch_inst.genblk1[4].genblk1.buffer_inst  (.X(\genblk1[7].genblk1.glitch_inst.buffer_out[4] ),
    .A(\genblk1[7].genblk1.glitch_inst.buffer_out[3] ));
 sg13cmos5l_buf_16 \genblk1[7].genblk1.glitch_inst.genblk1[5].genblk1.buffer_inst  (.X(\genblk1[7].genblk1.glitch_inst.buffer_out[5] ),
    .A(\genblk1[7].genblk1.glitch_inst.buffer_out[4] ));
 sg13cmos5l_xor2_1 \genblk1[7].genblk1.glitch_inst.xor_inst  (.B(\genblk1[7].genblk1.glitch_inst.buffer_out[5] ),
    .A(net16),
    .X(\genblk1[7].genblk1.glitch_inst.out_xor ));
 sg13cmos5l_buf_1 input1 (.A(glitch_en[0]),
    .X(net1));
 sg13cmos5l_buf_1 input2 (.A(glitch_en[1]),
    .X(net2));
 sg13cmos5l_buf_1 input3 (.A(glitch_en[2]),
    .X(net3));
 sg13cmos5l_buf_1 input4 (.A(glitch_en[3]),
    .X(net4));
 sg13cmos5l_buf_1 input5 (.A(glitch_en[4]),
    .X(net5));
 sg13cmos5l_buf_1 input6 (.A(glitch_en[5]),
    .X(net6));
 sg13cmos5l_buf_1 input7 (.A(glitch_en[6]),
    .X(net7));
 sg13cmos5l_buf_1 output10 (.A(net10),
    .X(out_xor[2]));
 sg13cmos5l_buf_1 output11 (.A(net11),
    .X(out_xor[3]));
 sg13cmos5l_buf_1 output12 (.A(net12),
    .X(out_xor[4]));
 sg13cmos5l_buf_1 output13 (.A(net13),
    .X(out_xor[5]));
 sg13cmos5l_buf_1 output14 (.A(net14),
    .X(out_xor[6]));
 sg13cmos5l_buf_1 output15 (.A(\genblk1[7].genblk1.glitch_inst.out_xor ),
    .X(out_xor[7]));
 sg13cmos5l_buf_1 output8 (.A(net8),
    .X(out_xor[0]));
 sg13cmos5l_buf_1 output9 (.A(net9),
    .X(out_xor[1]));
 sg13cmos5l_buf_1 rebuffer16 (.A(\genblk1[7].genblk1.glitch_inst.in_buf ),
    .X(net16));
 sg13cmos5l_buf_1 rebuffer17 (.A(\genblk1[6].genblk1.glitch_inst.in_buf ),
    .X(net17));
endmodule
