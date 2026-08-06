module simple_ro (enable,
    osc,
    VPWR,
    VGND);
 input enable;
 output osc;
 inout VPWR;
 inout VGND;

 wire net1;
 wire \inverter_out[0] ;
 wire \inverter_out[1] ;
 wire \inverter_out[2] ;
 wire \inverter_out[3] ;
 wire \inverter_out[4] ;
 wire \inverter_out[5] ;
 wire \inverter_out[6] ;
 wire \inverter_out[7] ;
 wire \inverter_out[8] ;
 wire net2;

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
 sg13cmos5l_fill_2 FILLER_0_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_149 (.VDD(VPWR),
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
 sg13cmos5l_decap_8 FILLER_10_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_11 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_111 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_125 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_139 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_10_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_18 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_25 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_10_32 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_55 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_62 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_69 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_76 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_11_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_11_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_11_37 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_11_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_101 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_108 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_115 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_122 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_129 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_136 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_143 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_12_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_12_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_66 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_73 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_80 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_87 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_12_94 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_111 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_118 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_125 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_139 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_13_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_13_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_48 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_55 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_62 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_69 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_76 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_13_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_14_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_14_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_14_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_15_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_15_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_15_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_16_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_16_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_16_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_17_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_17_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_17_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_100 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_107 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_114 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_121 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_128 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_142 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_18_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_18_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_18_74 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_79 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_86 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_18_93 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_126 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_133 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_140 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_147 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _0_ (.A(net1),
    .B(\inverter_out[8] ),
    .X(net2),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk1[0].genblk1.inverter_inst  (.A(net2),
    .Y(\inverter_out[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk1[1].genblk1.genblk1.inverter_inst  (.VDD(VPWR),
    .Y(\inverter_out[1] ),
    .A(\inverter_out[0] ),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk1[2].genblk1.genblk1.inverter_inst  (.A(\inverter_out[1] ),
    .Y(\inverter_out[2] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk1[3].genblk1.genblk1.inverter_inst  (.VDD(VPWR),
    .Y(\inverter_out[3] ),
    .A(\inverter_out[2] ),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk1[4].genblk1.genblk1.inverter_inst  (.A(\inverter_out[3] ),
    .Y(\inverter_out[4] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk1[5].genblk1.genblk1.inverter_inst  (.VDD(VPWR),
    .Y(\inverter_out[5] ),
    .A(\inverter_out[4] ),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk1[6].genblk1.genblk1.inverter_inst  (.A(\inverter_out[5] ),
    .Y(\inverter_out[6] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_inv_1 \genblk1[7].genblk1.genblk1.inverter_inst  (.VDD(VPWR),
    .Y(\inverter_out[7] ),
    .A(\inverter_out[6] ),
    .VSS(VGND));
 sg13cmos5l_inv_16 \genblk1[8].genblk1.genblk1.inverter_inst  (.A(\inverter_out[7] ),
    .Y(\inverter_out[8] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 input1 (.A(enable),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 output2 (.A(net2),
    .X(osc),
    .VDD(VPWR),
    .VSS(VGND));
endmodule
