module f_load_binary (osc,
    VPWR,
    VGND,
    en);
 input osc;
 inout VPWR;
 inout VGND;
 input [4:0] en;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire \g_branch[0].fb ;
 wire \g_branch[0].gclk ;
 wire \g_branch[0].q[0] ;
 wire \g_branch[0].q[10] ;
 wire \g_branch[0].q[11] ;
 wire \g_branch[0].q[1] ;
 wire \g_branch[0].q[2] ;
 wire \g_branch[0].q[3] ;
 wire \g_branch[0].q[4] ;
 wire \g_branch[0].q[5] ;
 wire \g_branch[0].q[6] ;
 wire \g_branch[0].q[7] ;
 wire \g_branch[0].q[8] ;
 wire \g_branch[0].q[9] ;
 wire \g_branch[1].fb ;
 wire \g_branch[1].gclk ;
 wire \g_branch[1].q[0] ;
 wire \g_branch[1].q[10] ;
 wire \g_branch[1].q[11] ;
 wire \g_branch[1].q[1] ;
 wire \g_branch[1].q[2] ;
 wire \g_branch[1].q[3] ;
 wire \g_branch[1].q[4] ;
 wire \g_branch[1].q[5] ;
 wire \g_branch[1].q[6] ;
 wire \g_branch[1].q[7] ;
 wire \g_branch[1].q[8] ;
 wire \g_branch[1].q[9] ;
 wire \g_branch[2].fb ;
 wire \g_branch[2].gclk ;
 wire \g_branch[2].q[0] ;
 wire \g_branch[2].q[10] ;
 wire \g_branch[2].q[11] ;
 wire \g_branch[2].q[1] ;
 wire \g_branch[2].q[2] ;
 wire \g_branch[2].q[3] ;
 wire \g_branch[2].q[4] ;
 wire \g_branch[2].q[5] ;
 wire \g_branch[2].q[6] ;
 wire \g_branch[2].q[7] ;
 wire \g_branch[2].q[8] ;
 wire \g_branch[2].q[9] ;
 wire \g_branch[3].fb ;
 wire \g_branch[3].gclk ;
 wire \g_branch[3].q[0] ;
 wire \g_branch[3].q[10] ;
 wire \g_branch[3].q[11] ;
 wire \g_branch[3].q[1] ;
 wire \g_branch[3].q[2] ;
 wire \g_branch[3].q[3] ;
 wire \g_branch[3].q[4] ;
 wire \g_branch[3].q[5] ;
 wire \g_branch[3].q[6] ;
 wire \g_branch[3].q[7] ;
 wire \g_branch[3].q[8] ;
 wire \g_branch[3].q[9] ;
 wire \g_branch[4].fb ;
 wire \g_branch[4].gclk ;
 wire \g_branch[4].q[0] ;
 wire \g_branch[4].q[10] ;
 wire \g_branch[4].q[11] ;
 wire \g_branch[4].q[1] ;
 wire \g_branch[4].q[2] ;
 wire \g_branch[4].q[3] ;
 wire \g_branch[4].q[4] ;
 wire \g_branch[4].q[5] ;
 wire \g_branch[4].q[6] ;
 wire \g_branch[4].q[7] ;
 wire \g_branch[4].q[8] ;
 wire \g_branch[4].q[9] ;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire clknet_0_osc;
 wire clknet_1_0__leaf_osc;
 wire clknet_1_1__leaf_osc;
 wire \clknet_0_g_branch[4].gclk ;
 wire \clknet_1_0__leaf_g_branch[4].gclk ;
 wire \clknet_1_1__leaf_g_branch[4].gclk ;
 wire \clknet_0_g_branch[3].gclk ;
 wire \clknet_1_0__leaf_g_branch[3].gclk ;
 wire \clknet_1_1__leaf_g_branch[3].gclk ;
 wire \clknet_0_g_branch[2].gclk ;
 wire \clknet_1_0__leaf_g_branch[2].gclk ;
 wire \clknet_1_1__leaf_g_branch[2].gclk ;
 wire \clknet_0_g_branch[1].gclk ;
 wire \clknet_1_0__leaf_g_branch[1].gclk ;
 wire \clknet_1_1__leaf_g_branch[1].gclk ;
 wire \clknet_0_g_branch[0].gclk ;
 wire \clknet_1_0__leaf_g_branch[0].gclk ;
 wire \clknet_1_1__leaf_g_branch[0].gclk ;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;

 sg13cmos5l_fill_2 FILLER_0_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_168 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_218 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_0_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_249 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_0_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_0_286 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_10_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_134 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_144 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_10_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_10_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_10_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_180 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_1_226 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_233 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_246 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_1_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_1_93 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_1_95 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_177 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_179 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_2_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_237 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_2_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_2_9 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_209 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_3_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_246 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_3_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_3_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_120 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_127 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_131 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_4_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_4_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_4_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_4_85 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_151 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_2 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_200 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_5_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_255 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_5_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_5_68 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_2 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_6_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_6_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_6_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_145 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_200 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_7_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_7_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_281 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_30 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_7_80 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_7_9 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_134 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_153 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_8_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_8_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_8_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_8_81 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_132 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_145 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_186 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_8 FILLER_9_228 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_decap_4 FILLER_9_235 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_239 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_26 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_293 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_295 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_2 FILLER_9_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_fill_1 FILLER_9_9 (.VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_2 _035_ (.A(net69),
    .B(net32),
    .C(net61),
    .Y(_016_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net56));
 sg13cmos5l_nor4_2 _036_ (.A(net44),
    .B(net30),
    .C(net38),
    .Y(_017_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net35));
 sg13cmos5l_nor3_1 _037_ (.A(net25),
    .B(net20),
    .C(net29),
    .Y(_018_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3_1 _038_ (.B(_017_),
    .C(_018_),
    .A(_016_),
    .Y(_019_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xor2_1 _039_ (.B(net56),
    .A(net61),
    .X(_020_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _040_ (.Y(_021_),
    .A(net69),
    .B(net72),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _041_ (.Y(_022_),
    .A(_020_),
    .B(_021_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _042_ (.Y(\g_branch[0].fb ),
    .A(_019_),
    .B(_022_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _043_ (.A(net15),
    .B(clknet_1_0__leaf_osc),
    .X(\g_branch[0].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_2 _044_ (.A(net70),
    .B(net62),
    .C(net59),
    .Y(_023_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net41));
 sg13cmos5l_nor4_2 _045_ (.A(net52),
    .B(net43),
    .C(net49),
    .Y(_024_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net48));
 sg13cmos5l_nor3_1 _046_ (.A(net21),
    .B(net23),
    .C(net16),
    .Y(_025_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3_1 _047_ (.B(_024_),
    .C(_025_),
    .A(_023_),
    .Y(_026_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xor2_1 _048_ (.B(net75),
    .A(net59),
    .X(_027_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _049_ (.Y(_028_),
    .A(net70),
    .B(net62),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _050_ (.Y(_029_),
    .A(_027_),
    .B(_028_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _051_ (.Y(\g_branch[1].fb ),
    .A(_026_),
    .B(_029_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _052_ (.A(clknet_1_0__leaf_osc),
    .B(net12),
    .X(\g_branch[1].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_2 _053_ (.A(net63),
    .B(net65),
    .C(net57),
    .Y(_030_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net53));
 sg13cmos5l_nor4_2 _054_ (.A(net55),
    .B(net45),
    .C(net33),
    .Y(_031_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net36));
 sg13cmos5l_nor3_1 _055_ (.A(net22),
    .B(net19),
    .C(net31),
    .Y(_032_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3_1 _056_ (.B(_031_),
    .C(_032_),
    .A(_030_),
    .Y(_033_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xor2_1 _057_ (.B(net71),
    .A(net57),
    .X(_034_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _058_ (.Y(_000_),
    .A(net63),
    .B(net65),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _059_ (.Y(_001_),
    .A(_034_),
    .B(_000_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _060_ (.Y(\g_branch[2].fb ),
    .A(_033_),
    .B(_001_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _061_ (.A(clknet_1_0__leaf_osc),
    .B(net10),
    .X(\g_branch[2].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_2 _062_ (.A(net58),
    .B(net64),
    .C(net68),
    .Y(_002_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net46));
 sg13cmos5l_nor4_2 _063_ (.A(net39),
    .B(net42),
    .C(net54),
    .Y(_003_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net50));
 sg13cmos5l_nor3_1 _064_ (.A(net28),
    .B(net24),
    .C(net27),
    .Y(_004_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3_1 _065_ (.B(_003_),
    .C(_004_),
    .A(_002_),
    .Y(_005_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xor2_1 _066_ (.B(net74),
    .A(net68),
    .X(_006_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _067_ (.Y(_007_),
    .A(net58),
    .B(net64),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _068_ (.Y(_008_),
    .A(_006_),
    .B(_007_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _069_ (.Y(\g_branch[3].fb ),
    .A(_005_),
    .B(_008_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _070_ (.A(clknet_1_1__leaf_osc),
    .B(net8),
    .X(\g_branch[3].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nor4_2 _071_ (.A(net67),
    .B(net66),
    .C(net60),
    .Y(_009_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net37));
 sg13cmos5l_nor4_2 _072_ (.A(net47),
    .B(net40),
    .C(net34),
    .Y(_010_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net51));
 sg13cmos5l_nor3_1 _073_ (.A(net17),
    .B(net26),
    .C(net18),
    .Y(_011_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_nand3_1 _074_ (.B(_010_),
    .C(_011_),
    .A(_009_),
    .Y(_012_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xor2_1 _075_ (.B(net73),
    .A(net60),
    .X(_013_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _076_ (.Y(_014_),
    .A(net67),
    .B(net66),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _077_ (.Y(_015_),
    .A(_013_),
    .B(_014_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_xnor2_1 _078_ (.Y(\g_branch[4].fb ),
    .A(_012_),
    .B(_015_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_and2_1 _079_ (.A(clknet_1_1__leaf_osc),
    .B(net6),
    .X(\g_branch[4].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_dfrbpq_1 _080_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\g_branch[4].fb ),
    .Q(\g_branch[4].q[0] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _081_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net66),
    .Q(\g_branch[4].q[1] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _082_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net47),
    .Q(\g_branch[4].q[2] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _083_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net37),
    .Q(\g_branch[4].q[3] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _084_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net67),
    .Q(\g_branch[4].q[4] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _085_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net40),
    .Q(\g_branch[4].q[5] ),
    .CLK(\clknet_1_0__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _086_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net60),
    .Q(\g_branch[4].q[6] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _087_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net17),
    .Q(\g_branch[4].q[7] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _088_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net34),
    .Q(\g_branch[4].q[8] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _089_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net18),
    .Q(\g_branch[4].q[9] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _090_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net26),
    .Q(\g_branch[4].q[10] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _091_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net51),
    .Q(\g_branch[4].q[11] ),
    .CLK(\clknet_1_1__leaf_g_branch[4].gclk ));
 sg13cmos5l_dfrbpq_1 _092_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\g_branch[3].fb ),
    .Q(\g_branch[3].q[0] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _093_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net64),
    .Q(\g_branch[3].q[1] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _094_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net39),
    .Q(\g_branch[3].q[2] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _095_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net46),
    .Q(\g_branch[3].q[3] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _096_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net58),
    .Q(\g_branch[3].q[4] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _097_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net42),
    .Q(\g_branch[3].q[5] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _098_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net68),
    .Q(\g_branch[3].q[6] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _099_ (.RESET_B(net9),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net28),
    .Q(\g_branch[3].q[7] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _100_ (.RESET_B(net9),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net54),
    .Q(\g_branch[3].q[8] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _101_ (.RESET_B(net9),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net27),
    .Q(\g_branch[3].q[9] ),
    .CLK(\clknet_1_0__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _102_ (.RESET_B(net9),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net24),
    .Q(\g_branch[3].q[10] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _103_ (.RESET_B(net9),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net50),
    .Q(\g_branch[3].q[11] ),
    .CLK(\clknet_1_1__leaf_g_branch[3].gclk ));
 sg13cmos5l_dfrbpq_1 _104_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\g_branch[2].fb ),
    .Q(\g_branch[2].q[0] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _105_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net65),
    .Q(\g_branch[2].q[1] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _106_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net55),
    .Q(\g_branch[2].q[2] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _107_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net53),
    .Q(\g_branch[2].q[3] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _108_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net63),
    .Q(\g_branch[2].q[4] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _109_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net45),
    .Q(\g_branch[2].q[5] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _110_ (.RESET_B(net10),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net57),
    .Q(\g_branch[2].q[6] ),
    .CLK(\clknet_1_0__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _111_ (.RESET_B(net11),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net22),
    .Q(\g_branch[2].q[7] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _112_ (.RESET_B(net11),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net33),
    .Q(\g_branch[2].q[8] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _113_ (.RESET_B(net11),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net31),
    .Q(\g_branch[2].q[9] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _114_ (.RESET_B(net11),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net19),
    .Q(\g_branch[2].q[10] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _115_ (.RESET_B(net11),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net36),
    .Q(\g_branch[2].q[11] ),
    .CLK(\clknet_1_1__leaf_g_branch[2].gclk ));
 sg13cmos5l_dfrbpq_1 _116_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\g_branch[1].fb ),
    .Q(\g_branch[1].q[0] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _117_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net62),
    .Q(\g_branch[1].q[1] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _118_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net52),
    .Q(\g_branch[1].q[2] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _119_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net41),
    .Q(\g_branch[1].q[3] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _120_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net70),
    .Q(\g_branch[1].q[4] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _121_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net43),
    .Q(\g_branch[1].q[5] ),
    .CLK(\clknet_1_0__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _122_ (.RESET_B(net12),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net59),
    .Q(\g_branch[1].q[6] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _123_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net21),
    .Q(\g_branch[1].q[7] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _124_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net49),
    .Q(\g_branch[1].q[8] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _125_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net16),
    .Q(\g_branch[1].q[9] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _126_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net23),
    .Q(\g_branch[1].q[10] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _127_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net48),
    .Q(\g_branch[1].q[11] ),
    .CLK(\clknet_1_1__leaf_g_branch[1].gclk ));
 sg13cmos5l_dfrbpq_1 _128_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\g_branch[0].fb ),
    .Q(\g_branch[0].q[0] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _129_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net61),
    .Q(\g_branch[0].q[1] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _130_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net32),
    .Q(\g_branch[0].q[2] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _131_ (.RESET_B(net15),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net44),
    .Q(\g_branch[0].q[3] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _132_ (.RESET_B(net15),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net56),
    .Q(\g_branch[0].q[4] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _133_ (.RESET_B(net15),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net30),
    .Q(\g_branch[0].q[5] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _134_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net69),
    .Q(\g_branch[0].q[6] ),
    .CLK(\clknet_1_0__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _135_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net25),
    .Q(\g_branch[0].q[7] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _136_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net38),
    .Q(\g_branch[0].q[8] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _137_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net29),
    .Q(\g_branch[0].q[9] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _138_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net20),
    .Q(\g_branch[0].q[10] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_dfrbpq_1 _139_ (.RESET_B(net15),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net35),
    .Q(\g_branch[0].q[11] ),
    .CLK(\clknet_1_1__leaf_g_branch[0].gclk ));
 sg13cmos5l_buf_8 \clkbuf_0_g_branch[0].gclk  (.A(\g_branch[0].gclk ),
    .X(\clknet_0_g_branch[0].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_0_g_branch[1].gclk  (.A(\g_branch[1].gclk ),
    .X(\clknet_0_g_branch[1].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_0_g_branch[2].gclk  (.A(\g_branch[2].gclk ),
    .X(\clknet_0_g_branch[2].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_0_g_branch[3].gclk  (.A(\g_branch[3].gclk ),
    .X(\clknet_0_g_branch[3].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_0_g_branch[4].gclk  (.A(\g_branch[4].gclk ),
    .X(\clknet_0_g_branch[4].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 clkbuf_0_osc (.A(osc),
    .X(clknet_0_osc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_0__f_g_branch[0].gclk  (.A(\clknet_0_g_branch[0].gclk ),
    .X(\clknet_1_0__leaf_g_branch[0].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_0__f_g_branch[1].gclk  (.A(\clknet_0_g_branch[1].gclk ),
    .X(\clknet_1_0__leaf_g_branch[1].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_0__f_g_branch[2].gclk  (.A(\clknet_0_g_branch[2].gclk ),
    .X(\clknet_1_0__leaf_g_branch[2].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_0__f_g_branch[3].gclk  (.A(\clknet_0_g_branch[3].gclk ),
    .X(\clknet_1_0__leaf_g_branch[3].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_0__f_g_branch[4].gclk  (.A(\clknet_0_g_branch[4].gclk ),
    .X(\clknet_1_0__leaf_g_branch[4].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 clkbuf_1_0__f_osc (.A(clknet_0_osc),
    .X(clknet_1_0__leaf_osc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_1__f_g_branch[0].gclk  (.A(\clknet_0_g_branch[0].gclk ),
    .X(\clknet_1_1__leaf_g_branch[0].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_1__f_g_branch[1].gclk  (.A(\clknet_0_g_branch[1].gclk ),
    .X(\clknet_1_1__leaf_g_branch[1].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_1__f_g_branch[2].gclk  (.A(\clknet_0_g_branch[2].gclk ),
    .X(\clknet_1_1__leaf_g_branch[2].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_1__f_g_branch[3].gclk  (.A(\clknet_0_g_branch[3].gclk ),
    .X(\clknet_1_1__leaf_g_branch[3].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 \clkbuf_1_1__f_g_branch[4].gclk  (.A(\clknet_0_g_branch[4].gclk ),
    .X(\clknet_1_1__leaf_g_branch[4].gclk ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_8 clkbuf_1_1__f_osc (.A(clknet_0_osc),
    .X(clknet_1_1__leaf_osc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_2 clkload0 (.A(clknet_1_1__leaf_osc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout10 (.A(net3),
    .X(net10),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout11 (.A(net3),
    .X(net11),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout12 (.A(net2),
    .X(net12),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout13 (.A(net2),
    .X(net13),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout14 (.A(net1),
    .X(net14),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout15 (.A(net1),
    .X(net15),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout6 (.A(net5),
    .X(net6),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout7 (.A(net5),
    .X(net7),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout8 (.A(net4),
    .X(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_buf_1 fanout9 (.A(net4),
    .X(net9),
    .VDD(VPWR),
    .VSS(VGND));
 sg13cmos5l_dlygate4sd3_1 hold16 (.A(\g_branch[1].q[8] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net16));
 sg13cmos5l_dlygate4sd3_1 hold17 (.A(\g_branch[4].q[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net17));
 sg13cmos5l_dlygate4sd3_1 hold18 (.A(\g_branch[4].q[8] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net18));
 sg13cmos5l_dlygate4sd3_1 hold19 (.A(\g_branch[2].q[9] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net19));
 sg13cmos5l_dlygate4sd3_1 hold20 (.A(\g_branch[0].q[9] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net20));
 sg13cmos5l_dlygate4sd3_1 hold21 (.A(\g_branch[1].q[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net21));
 sg13cmos5l_dlygate4sd3_1 hold22 (.A(\g_branch[2].q[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net22));
 sg13cmos5l_dlygate4sd3_1 hold23 (.A(\g_branch[1].q[9] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net23));
 sg13cmos5l_dlygate4sd3_1 hold24 (.A(\g_branch[3].q[9] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net24));
 sg13cmos5l_dlygate4sd3_1 hold25 (.A(\g_branch[0].q[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net25));
 sg13cmos5l_dlygate4sd3_1 hold26 (.A(\g_branch[4].q[9] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net26));
 sg13cmos5l_dlygate4sd3_1 hold27 (.A(\g_branch[3].q[8] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net27));
 sg13cmos5l_dlygate4sd3_1 hold28 (.A(\g_branch[3].q[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net28));
 sg13cmos5l_dlygate4sd3_1 hold29 (.A(\g_branch[0].q[8] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net29));
 sg13cmos5l_dlygate4sd3_1 hold30 (.A(\g_branch[0].q[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net30));
 sg13cmos5l_dlygate4sd3_1 hold31 (.A(\g_branch[2].q[8] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net31));
 sg13cmos5l_dlygate4sd3_1 hold32 (.A(\g_branch[0].q[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net32));
 sg13cmos5l_dlygate4sd3_1 hold33 (.A(\g_branch[2].q[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net33));
 sg13cmos5l_dlygate4sd3_1 hold34 (.A(\g_branch[4].q[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net34));
 sg13cmos5l_dlygate4sd3_1 hold35 (.A(\g_branch[0].q[10] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net35));
 sg13cmos5l_dlygate4sd3_1 hold36 (.A(\g_branch[2].q[10] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net36));
 sg13cmos5l_dlygate4sd3_1 hold37 (.A(\g_branch[4].q[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net37));
 sg13cmos5l_dlygate4sd3_1 hold38 (.A(\g_branch[0].q[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net38));
 sg13cmos5l_dlygate4sd3_1 hold39 (.A(\g_branch[3].q[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net39));
 sg13cmos5l_dlygate4sd3_1 hold40 (.A(\g_branch[4].q[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net40));
 sg13cmos5l_dlygate4sd3_1 hold41 (.A(\g_branch[1].q[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net41));
 sg13cmos5l_dlygate4sd3_1 hold42 (.A(\g_branch[3].q[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net42));
 sg13cmos5l_dlygate4sd3_1 hold43 (.A(\g_branch[1].q[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net43));
 sg13cmos5l_dlygate4sd3_1 hold44 (.A(\g_branch[0].q[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net44));
 sg13cmos5l_dlygate4sd3_1 hold45 (.A(\g_branch[2].q[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net45));
 sg13cmos5l_dlygate4sd3_1 hold46 (.A(\g_branch[3].q[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net46));
 sg13cmos5l_dlygate4sd3_1 hold47 (.A(\g_branch[4].q[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net47));
 sg13cmos5l_dlygate4sd3_1 hold48 (.A(\g_branch[1].q[10] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net48));
 sg13cmos5l_dlygate4sd3_1 hold49 (.A(\g_branch[1].q[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net49));
 sg13cmos5l_dlygate4sd3_1 hold50 (.A(\g_branch[3].q[10] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net50));
 sg13cmos5l_dlygate4sd3_1 hold51 (.A(\g_branch[4].q[10] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net51));
 sg13cmos5l_dlygate4sd3_1 hold52 (.A(\g_branch[1].q[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net52));
 sg13cmos5l_dlygate4sd3_1 hold53 (.A(\g_branch[2].q[2] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net53));
 sg13cmos5l_dlygate4sd3_1 hold54 (.A(\g_branch[3].q[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net54));
 sg13cmos5l_dlygate4sd3_1 hold55 (.A(\g_branch[2].q[1] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net55));
 sg13cmos5l_dlygate4sd3_1 hold56 (.A(\g_branch[0].q[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net56));
 sg13cmos5l_dlygate4sd3_1 hold57 (.A(\g_branch[2].q[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net57));
 sg13cmos5l_dlygate4sd3_1 hold58 (.A(\g_branch[3].q[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net58));
 sg13cmos5l_dlygate4sd3_1 hold59 (.A(\g_branch[1].q[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net59));
 sg13cmos5l_dlygate4sd3_1 hold60 (.A(\g_branch[4].q[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net60));
 sg13cmos5l_dlygate4sd3_1 hold61 (.A(\g_branch[0].q[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net61));
 sg13cmos5l_dlygate4sd3_1 hold62 (.A(\g_branch[1].q[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net62));
 sg13cmos5l_dlygate4sd3_1 hold63 (.A(\g_branch[2].q[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net63));
 sg13cmos5l_dlygate4sd3_1 hold64 (.A(\g_branch[3].q[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net64));
 sg13cmos5l_dlygate4sd3_1 hold65 (.A(\g_branch[2].q[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net65));
 sg13cmos5l_dlygate4sd3_1 hold66 (.A(\g_branch[4].q[0] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net66));
 sg13cmos5l_dlygate4sd3_1 hold67 (.A(\g_branch[4].q[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net67));
 sg13cmos5l_dlygate4sd3_1 hold68 (.A(\g_branch[3].q[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net68));
 sg13cmos5l_dlygate4sd3_1 hold69 (.A(\g_branch[0].q[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net69));
 sg13cmos5l_dlygate4sd3_1 hold70 (.A(\g_branch[1].q[3] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net70));
 sg13cmos5l_dlygate4sd3_1 hold71 (.A(\g_branch[2].q[11] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net71));
 sg13cmos5l_dlygate4sd3_1 hold72 (.A(\g_branch[0].q[11] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net72));
 sg13cmos5l_dlygate4sd3_1 hold73 (.A(\g_branch[4].q[11] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net73));
 sg13cmos5l_dlygate4sd3_1 hold74 (.A(\g_branch[3].q[11] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net74));
 sg13cmos5l_dlygate4sd3_1 hold75 (.A(\g_branch[1].q[11] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net75));
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
endmodule
