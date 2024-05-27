%%% Aggregating mark values above beach elevation
NumValues = sum(VA_HS.HS_NumM((ThresholdVA - BeachElevVA)>-0.05)); ProbM = VA_HS.HS_NumM((ThresholdVA - BeachElevVA)>-0.05)/NumValues;
M_VA = sum(MuVA((ThresholdVA - BeachElevVA)>-0.05).*ProbM);
M_Lb_VA = M_VA - sum((MuVA((ThresholdVA - BeachElevVA)>-0.05) - Mu_Lb_VA((ThresholdVA - BeachElevVA)>-0.05)).*ProbM);
M_Ub_VA = sum((MuVA((ThresholdVA - BeachElevVA)>-0.05) + Mu_Ub_VA((ThresholdVA - BeachElevVA)>-0.05)).*ProbM) - M_VA; clear NumValues ProbM

NumValues = sum(TX_GV_CS.CS_NumM((ThresholdTX_GV - BeachElevTX_GV)>-0.05)); ProbM = TX_GV_CS.CS_NumM((ThresholdTX_GV - BeachElevTX_GV)>-0.05)/NumValues;
M_TX_GV = sum(MuTX_GV((ThresholdTX_GV - BeachElevTX_GV)>-0.05).*ProbM);
M_Lb_TX_GV = M_TX_GV - sum((MuTX_GV((ThresholdTX_GV - BeachElevTX_GV)>-0.05) - Mu_Lb_TX_GV((ThresholdTX_GV - BeachElevTX_GV)>-0.05)).*ProbM);
M_Ub_TX_GV = sum((MuTX_GV((ThresholdTX_GV - BeachElevTX_GV)>-0.05) + Mu_Ub_TX_GV((ThresholdTX_GV - BeachElevTX_GV)>-0.05)).*ProbM) - M_TX_GV; clear NumValues ProbM

NumValues = sum(TX_CC_CS.CS_NumM((ThresholdTX_CC - BeachElevTX_CC)>-0.05)); ProbM = TX_CC_CS.CS_NumM((ThresholdTX_CC - BeachElevTX_CC)>-0.05)/NumValues;
M_TX_CC = sum(MuTX_CC((ThresholdTX_CC - BeachElevTX_CC)>-0.05).*ProbM);
M_Lb_TX_CC = M_TX_CC - sum((MuTX_CC((ThresholdTX_CC - BeachElevTX_CC)>-0.05) - Mu_Lb_TX_CC((ThresholdTX_CC - BeachElevTX_CC)>-0.05)).*ProbM);
M_Ub_TX_CC = sum((MuTX_CC((ThresholdTX_CC - BeachElevTX_CC)>-0.05) + Mu_Ub_TX_CC((ThresholdTX_CC - BeachElevTX_CC)>-0.05)).*ProbM) - M_TX_CC; clear NumValues ProbM

NumValues = sum(OR_SB_HS.HS_NumM((ThresholdOR_SB - BeachElevOR_SB)>-0.05)); ProbM = OR_SB_HS.HS_NumM((ThresholdOR_SB - BeachElevOR_SB)>-0.05)/NumValues;
M_OR_SB = sum(MuOR_SB((ThresholdOR_SB - BeachElevOR_SB)>-0.05).*ProbM);
M_Lb_OR_SB = M_OR_SB - sum((MuOR_SB((ThresholdOR_SB - BeachElevOR_SB)>-0.05) - Mu_Lb_OR_SB((ThresholdOR_SB - BeachElevOR_SB)>-0.05)).*ProbM);
M_Ub_OR_SB = sum((MuOR_SB((ThresholdOR_SB - BeachElevOR_SB)>-0.05) + Mu_Ub_OR_SB((ThresholdOR_SB - BeachElevOR_SB)>-0.05)).*ProbM) - M_OR_SB; clear NumValues ProbM

NumValues = sum(CA_HS.HS_NumM((ThresholdCA - BeachElevCA)>-0.05)); ProbM = CA_HS.HS_NumM((ThresholdCA - BeachElevCA)>-0.05)/NumValues;
M_CA = sum(MuCA((ThresholdCA - BeachElevCA)>-0.05).*ProbM);
M_Lb_CA = M_CA - sum((MuCA((ThresholdCA - BeachElevCA)>-0.05) - Mu_Lb_CA((ThresholdCA - BeachElevCA)>-0.05)).*ProbM);
M_Ub_CA = sum((MuCA((ThresholdCA - BeachElevCA)>-0.05) + Mu_Ub_CA((ThresholdCA - BeachElevCA)>-0.05)).*ProbM) - M_CA; clear NumValues ProbM

NumValues = sum(FL_CS.CS_NumM((ThresholdFL - BeachElevFL)>-0.05)); ProbM = FL_CS.CS_NumM((ThresholdFL - BeachElevFL)>-0.05)/NumValues;
M_FL = sum(MuFL((ThresholdFL - BeachElevFL)>-0.05).*ProbM);
M_Lb_FL = M_FL - sum((MuFL((ThresholdFL - BeachElevFL)>-0.05) - Mu_Lb_FL((ThresholdFL - BeachElevFL)>-0.05)).*ProbM);
M_Ub_FL = sum((MuFL((ThresholdFL - BeachElevFL)>-0.05) + Mu_Ub_FL((ThresholdFL - BeachElevFL)>-0.05)).*ProbM) - M_FL; clear NumValues ProbM

NumValues = sum(FL_SP_CS.CS_NumM((ThresholdFL_SP - BeachElevFL_SP)>-0.05)); ProbM = FL_SP_CS.CS_NumM((ThresholdFL_SP - BeachElevFL_SP)>-0.05)/NumValues;
M_FL_SP = sum(MuFL_SP((ThresholdFL_SP - BeachElevFL_SP)>-0.05).*ProbM);
M_Lb_FL_SP = M_FL_SP - sum((MuFL_SP((ThresholdFL_SP - BeachElevFL_SP)>-0.05) - Mu_Lb_FL_SP((ThresholdFL_SP - BeachElevFL_SP)>-0.05)).*ProbM);
M_Ub_FL_SP = sum((MuFL_SP((ThresholdFL_SP - BeachElevFL_SP)>-0.05) + Mu_Ub_FL_SP((ThresholdFL_SP - BeachElevFL_SP)>-0.05)).*ProbM) - M_FL_SP; clear NumValues ProbM

NumValues = sum(AUS_NSW_CS.CS_NumM((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05)); ProbM = AUS_NSW_CS.CS_NumM((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05)/NumValues;
M_AUS_NSW = sum(MuAUS_NSW((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05).*ProbM);
M_Lb_AUS_NSW = M_AUS_NSW - sum((MuAUS_NSW((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05) - Mu_Lb_AUS_NSW((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05)).*ProbM);
M_Ub_AUS_NSW = sum((MuAUS_NSW((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05) + Mu_Ub_AUS_NSW((ThresholdAUS_NSW - BeachElevAUS_NSW)>-0.05)).*ProbM) - M_AUS_NSW; clear NumValues ProbM

% NumValues = sum(AUS_QLD_HS.HS_NumM((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05)); ProbM = AUS_QLD_HS.HS_NumM((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05)/NumValues;
% M_AUS_QLD = sum(MuAUS_QLD((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05).*ProbM);
% M_Lb_AUS_QLD = M_AUS_QLD - sum((MuAUS_QLD((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05) - Mu_Lb_AUS_QLD((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05)).*ProbM);
% M_Ub_AUS_QLD = sum((MuAUS_QLD((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05) + Mu_Ub_AUS_QLD((ThresholdAUS_QLD - BeachElevAUS_QLD)>-0.05)).*ProbM) - M_AUS_QLD; clear NumValues ProbM

NumValues = sum(HI_CS.CS_NumM((ThresholdHI - BeachElevHI)>-0.05)); ProbM = HI_CS.CS_NumM((ThresholdHI - BeachElevHI)>-0.05)/NumValues;
M_HI = sum(MuHI((ThresholdHI - BeachElevHI)>-0.05).*ProbM);
M_Lb_HI = M_HI - sum((MuHI((ThresholdHI - BeachElevHI)>-0.05) - Mu_Lb_HI((ThresholdHI - BeachElevHI)>-0.05)).*ProbM);
M_Ub_HI = sum((MuHI((ThresholdHI - BeachElevHI)>-0.05) + Mu_Ub_HI((ThresholdHI - BeachElevHI)>-0.05)).*ProbM) - M_HI; clear NumValues ProbM

NumValues = sum(IT_CS.CS_NumM((ThresholdIT - BeachElevIT)>-0.05)); ProbM = IT_CS.CS_NumM((ThresholdIT - BeachElevIT)>-0.05)/NumValues;
M_IT = sum(MuIT((ThresholdIT - BeachElevIT)>-0.05).*ProbM);
M_Lb_IT = M_IT - sum((MuIT((ThresholdIT - BeachElevIT)>-0.05) - Mu_Lb_IT((ThresholdIT - BeachElevIT)>-0.05)).*ProbM);
M_Ub_IT = sum((MuIT((ThresholdIT - BeachElevIT)>-0.05) + Mu_Ub_IT((ThresholdIT - BeachElevIT)>-0.05)).*ProbM) - M_IT; clear NumValues ProbM

NumValues = sum(AK_HS.HS_NumM((ThresholdAK - BeachElevAK)>-0.05)); ProbM = AK_HS.HS_NumM((ThresholdAK - BeachElevAK)>-0.05)/NumValues;
M_AK = sum(MuAK((ThresholdAK - BeachElevAK)>-0.05).*ProbM);
M_Lb_AK = M_AK - sum((MuAK((ThresholdAK - BeachElevAK)>-0.05) - Mu_Lb_AK((ThresholdAK - BeachElevAK)>-0.05)).*ProbM);
M_Ub_AK = sum((MuAK((ThresholdAK - BeachElevAK)>-0.05) + Mu_Ub_AK((ThresholdAK - BeachElevAK)>-0.05)).*ProbM) - M_AK; clear NumValues ProbM

NumValues = sum(MA_CS.CS_NumM((ThresholdMA - BeachElevMA)>-0.05)); ProbM = MA_CS.CS_NumM((ThresholdMA - BeachElevMA)>-0.05)/NumValues;
M_MA = sum(MuMA((ThresholdMA - BeachElevMA)>-0.05).*ProbM);
M_Lb_MA = M_MA - sum((MuMA((ThresholdMA - BeachElevMA)>-0.05) - Mu_Lb_MA((ThresholdMA - BeachElevMA)>-0.05)).*ProbM);
M_Ub_MA = sum((MuMA((ThresholdMA - BeachElevMA)>-0.05) + Mu_Ub_MA((ThresholdMA - BeachElevMA)>-0.05)).*ProbM) - M_MA; clear NumValues ProbM
