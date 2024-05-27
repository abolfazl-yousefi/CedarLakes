
%%% Method 1 - Confidence intervals estimate from exponential [muhat muci] = expfit(variablename);


%%% Lower bound for lambda
% New Results
IA_Lb.AL_Dauphin = abs(Lambda2.AL_Dauphin - chi2inv(0.025,2*rmmissing(AL_Dauphin_CS.CS_NumIA))./(2*rmmissing(AL_Dauphin_CS.CS_NumIA)).*Lambda2.AL_Dauphin);
IA_Lb.FL_Shell = abs(Lambda2.FL_Shell - chi2inv(0.025,2*rmmissing(FL_Shell_CS.CS_NumIA))./(2*rmmissing(FL_Shell_CS.CS_NumIA)).*Lambda2.FL_Shell);
% IA_Lb.GA_LittleTybee = abs(Lambda2.GA_LittleTybee - chi2inv(0.025,2*rmmissing(GA_LittleTybee_CS.CS_NumIA))./(2*rmmissing(GA_LittleTybee_CS.CS_NumIA)).*Lambda2.GA_LittleTybee);
IA_Lb.MA_Plum = abs(Lambda2.MA_Plum - chi2inv(0.025,2*rmmissing(MA_Plum_CS.CS_NumIA))./(2*rmmissing(MA_Plum_CS.CS_NumIA)).*Lambda2.MA_Plum);
IA_Lb.NC_BaldHead = abs(Lambda2.NC_BaldHead - chi2inv(0.025,2*rmmissing(NC_BaldHead_CS.CS_NumIA))./(2*rmmissing(NC_BaldHead_CS.CS_NumIA)).*Lambda2.NC_BaldHead);
IA_Lb.NC_Masonboro = abs(Lambda2.NC_Masonboro - chi2inv(0.025,2*rmmissing(NC_Masonboro_CS.CS_NumIA))./(2*rmmissing(NC_Masonboro_CS.CS_NumIA)).*Lambda2.NC_Masonboro);
IA_Lb.NC_Portsmouth = abs(Lambda2.NC_Portsmouth - chi2inv(0.025,2*rmmissing(NC_Portsmouth_CS.CS_NumIA))./(2*rmmissing(NC_Portsmouth_CS.CS_NumIA)).*Lambda2.NC_Portsmouth);
% IA_Lb.SC_Lighthouse = abs(Lambda2.SC_Lighthouse - chi2inv(0.025,2*rmmissing(SC_Lighthouse_CS.CS_NumIA))./(2*rmmissing(SC_Lighthouse_CS.CS_NumIA)).*Lambda2.SC_Lighthouse);
% IA_Lb.SC_Pockoy = abs(Lambda2.SC_Pockoy - chi2inv(0.025,2*rmmissing(SC_Pockoy_CS.CS_NumIA))./(2*rmmissing(SC_Pockoy_CS.CS_NumIA)).*Lambda2.SC_Pockoy);
IA_Lb.TX_Follets = abs(Lambda2.TX_Follets - chi2inv(0.025,2*rmmissing(TX_Follets_CS.CS_NumIA))./(2*rmmissing(TX_Follets_CS.CS_NumIA)).*Lambda2.TX_Follets);
IA_Lb.TX_Hog = abs(Lambda2.TX_Hog - chi2inv(0.025,2*rmmissing(TX_Hog_CS.CS_NumIA))./(2*rmmissing(TX_Hog_CS.CS_NumIA)).*Lambda2.TX_Hog);
IA_Lb.TX_MatagordaPeninsula = abs(Lambda2.TX_MatagordaPeninsula - chi2inv(0.025,2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumIA))./(2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumIA)).*Lambda2.TX_MatagordaPeninsula);
% IA_Lb.TX_Padre = abs(Lambda2.TX_Padre - chi2inv(0.025,2*rmmissing(TX_Padre_CS.CS_NumIA))./(2*rmmissing(TX_Padre_CS.CS_NumIA)).*Lambda2.TX_Padre);
IA_Lb.VA_Assateague = abs(Lambda2.VA_Assateague - chi2inv(0.025,2*rmmissing(VA_Assateague_HS.HS_NumIA))./(2*rmmissing(VA_Assateague_HS.HS_NumIA)).*Lambda2.VA_Assateague);
% Former Results
IA_Lb.VA = abs(Lambda2.VA - chi2inv(0.025,2*rmmissing(VA_HS.HS_NumIA))./(2*rmmissing(VA_HS.HS_NumIA)).*Lambda2.VA); %NumDays = 1350, NumMonths = 9, NumYears =5
IA_Lb.TX_GV = abs(Lambda2.TX_GV - chi2inv(0.025,2*rmmissing(TX_GV_CS.CS_NumIA))./(2*rmmissing(TX_GV_CS.CS_NumIA)).*Lambda2.TX_GV);  %Average days per month = 30
IA_Lb.TX_CC = abs(Lambda2.TX_CC - chi2inv(0.025,2*rmmissing(TX_CC_CS.CS_NumIA))./(2*rmmissing(TX_CC_CS.CS_NumIA)).*Lambda2.TX_CC);
IA_Lb.OR_SB = abs(Lambda2.OR_SB - chi2inv(0.025,2*rmmissing(OR_SB_HS.HS_NumIA))./(2*rmmissing(OR_SB_HS.HS_NumIA)).*Lambda2.OR_SB);
IA_Lb.CA = abs(Lambda2.CA - chi2inv(0.025,2*rmmissing(CA_HS.HS_NumIA))./(2*rmmissing(CA_HS.HS_NumIA)).*Lambda2.CA);
IA_Lb.FL = abs(Lambda2.FL - chi2inv(0.025,2*rmmissing(FL_CS.CS_NumIA))./(2*rmmissing(FL_CS.CS_NumIA)).*Lambda2.FL);
IA_Lb.FL_SP = abs(Lambda2.FL_SP - chi2inv(0.025,2*rmmissing(FL_SP_CS.CS_NumIA))./(2*rmmissing(FL_SP_CS.CS_NumIA)).*Lambda2.FL_SP);
IA_Lb.AUS_NSW = abs(Lambda2.AUS_NSW - chi2inv(0.025,2*rmmissing(AUS_NSW_CS.CS_NumIA))./(2*rmmissing(AUS_NSW_CS.CS_NumIA)).*Lambda2.AUS_NSW);
IA_Lb.HI = abs(Lambda2.HI - chi2inv(0.025,2*rmmissing(HI_CS.CS_NumIA))./(2*rmmissing(HI_CS.CS_NumIA)).*Lambda2.HI);
IA_Lb.IT = abs(Lambda2.IT - chi2inv(0.025,2*rmmissing(IT_CS.CS_NumIA))./(2*rmmissing(IT_CS.CS_NumIA)).*Lambda2.IT);
IA_Lb.AK = abs(Lambda2.AK - chi2inv(0.025,2*rmmissing(AK_HS.HS_NumIA))./(2*rmmissing(AK_HS.HS_NumIA)).*Lambda2.AK);
IA_Lb.MA = abs(Lambda2.MA - chi2inv(0.025,2*rmmissing(MA_CS.CS_NumIA))./(2*rmmissing(MA_CS.CS_NumIA)).*Lambda2.MA);


%%% Upper bound for lambda
% New Results
IA_Ub.AL_Dauphin = abs(Lambda2.AL_Dauphin - chi2inv(0.975,2*rmmissing(AL_Dauphin_CS.CS_NumIA))./(2*rmmissing(AL_Dauphin_CS.CS_NumIA)).*Lambda2.AL_Dauphin);
IA_Ub.FL_Shell = abs(Lambda2.FL_Shell - chi2inv(0.975,2*rmmissing(FL_Shell_CS.CS_NumIA))./(2*rmmissing(FL_Shell_CS.CS_NumIA)).*Lambda2.FL_Shell);
% IA_Ub.GA_LittleTybee = abs(Lambda2.GA_LittleTybee - chi2inv(0.975,2*rmmissing(GA_LittleTybee_CS.CS_NumIA))./(2*rmmissing(GA_LittleTybee_CS.CS_NumIA)).*Lambda2.GA_LittleTybee);
IA_Ub.MA_Plum = abs(Lambda2.MA_Plum - chi2inv(0.975,2*rmmissing(MA_Plum_CS.CS_NumIA))./(2*rmmissing(MA_Plum_CS.CS_NumIA)).*Lambda2.MA_Plum);
IA_Ub.NC_BaldHead = abs(Lambda2.NC_BaldHead - chi2inv(0.975,2*rmmissing(NC_BaldHead_CS.CS_NumIA))./(2*rmmissing(NC_BaldHead_CS.CS_NumIA)).*Lambda2.NC_BaldHead);
IA_Ub.NC_Masonboro = abs(Lambda2.NC_Masonboro - chi2inv(0.975,2*rmmissing(NC_Masonboro_CS.CS_NumIA))./(2*rmmissing(NC_Masonboro_CS.CS_NumIA)).*Lambda2.NC_Masonboro);
IA_Ub.NC_Portsmouth = abs(Lambda2.NC_Portsmouth - chi2inv(0.975,2*rmmissing(NC_Portsmouth_CS.CS_NumIA))./(2*rmmissing(NC_Portsmouth_CS.CS_NumIA)).*Lambda2.NC_Portsmouth);
% IA_Ub.SC_Lighthouse = abs(Lambda2.SC_Lighthouse - chi2inv(0.975,2*rmmissing(SC_Lighthouse_CS.CS_NumIA))./(2*rmmissing(SC_Lighthouse_CS.CS_NumIA)).*Lambda2.SC_Lighthouse);
% IA_Ub.SC_Pockoy = abs(Lambda2.SC_Pockoy - chi2inv(0.975,2*rmmissing(SC_Pockoy_CS.CS_NumIA))./(2*rmmissing(SC_Pockoy_CS.CS_NumIA)).*Lambda2.SC_Pockoy);
IA_Ub.TX_Follets = abs(Lambda2.TX_Follets - chi2inv(0.975,2*rmmissing(TX_Follets_CS.CS_NumIA))./(2*rmmissing(TX_Follets_CS.CS_NumIA)).*Lambda2.TX_Follets);
IA_Ub.TX_Hog = abs(Lambda2.TX_Hog - chi2inv(0.975,2*rmmissing(TX_Hog_CS.CS_NumIA))./(2*rmmissing(TX_Hog_CS.CS_NumIA)).*Lambda2.TX_Hog);
IA_Ub.TX_MatagordaPeninsula = abs(Lambda2.TX_MatagordaPeninsula - chi2inv(0.975,2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumIA))./(2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumIA)).*Lambda2.TX_MatagordaPeninsula);
% IA_Ub.TX_Padre = abs(Lambda2.TX_Padre - chi2inv(0.975,2*rmmissing(TX_Padre_CS.CS_NumIA))./(2*rmmissing(TX_Padre_CS.CS_NumIA)).*Lambda2.TX_Padre);
IA_Ub.VA_Assateague = abs(Lambda2.VA_Assateague - chi2inv(0.975,2*rmmissing(VA_Assateague_HS.HS_NumIA))./(2*rmmissing(VA_Assateague_HS.HS_NumIA)).*Lambda2.VA_Assateague);
% Former Results
IA_Ub.VA = abs(Lambda2.VA - chi2inv(0.975,2*rmmissing(VA_HS.HS_NumIA))./(2*rmmissing(VA_HS.HS_NumIA)).*Lambda2.VA); %NumDays = 1350, NumMonths = 9, NumYears =5
IA_Ub.TX_GV = abs(Lambda2.TX_GV - chi2inv(0.975,2*rmmissing(TX_GV_CS.CS_NumIA))./(2*rmmissing(TX_GV_CS.CS_NumIA)).*Lambda2.TX_GV);  %Average days per month = 30
IA_Ub.TX_CC = abs(Lambda2.TX_CC - chi2inv(0.975,2*rmmissing(TX_CC_CS.CS_NumIA))./(2*rmmissing(TX_CC_CS.CS_NumIA)).*Lambda2.TX_CC);
IA_Ub.OR_SB = abs(Lambda2.OR_SB - chi2inv(0.975,2*rmmissing(OR_SB_HS.HS_NumIA))./(2*rmmissing(OR_SB_HS.HS_NumIA)).*Lambda2.OR_SB);
IA_Ub.CA = abs(Lambda2.CA - chi2inv(0.975,2*rmmissing(CA_HS.HS_NumIA))./(2*rmmissing(CA_HS.HS_NumIA)).*Lambda2.CA);
IA_Ub.FL = abs(Lambda2.FL - chi2inv(0.975,2*rmmissing(FL_CS.CS_NumIA))./(2*rmmissing(FL_CS.CS_NumIA)).*Lambda2.FL);
IA_Ub.FL_SP = abs(Lambda2.FL_SP - chi2inv(0.975,2*rmmissing(FL_SP_CS.CS_NumIA))./(2*rmmissing(FL_SP_CS.CS_NumIA)).*Lambda2.FL_SP);
IA_Ub.AUS_NSW = abs(Lambda2.AUS_NSW - chi2inv(0.975,2*rmmissing(AUS_NSW_CS.CS_NumIA))./(2*rmmissing(AUS_NSW_CS.CS_NumIA)).*Lambda2.AUS_NSW);
IA_Ub.HI = abs(Lambda2.HI - chi2inv(0.975,2*rmmissing(HI_CS.CS_NumIA))./(2*rmmissing(HI_CS.CS_NumIA)).*Lambda2.HI);
IA_Ub.IT = abs(Lambda2.IT - chi2inv(0.975,2*rmmissing(IT_CS.CS_NumIA))./(2*rmmissing(IT_CS.CS_NumIA)).*Lambda2.IT);
IA_Ub.AK = abs(Lambda2.AK - chi2inv(0.975,2*rmmissing(AK_HS.HS_NumIA))./(2*rmmissing(AK_HS.HS_NumIA)).*Lambda2.AK);
IA_Ub.MA = abs(Lambda2.MA - chi2inv(0.975,2*rmmissing(MA_CS.CS_NumIA))./(2*rmmissing(MA_CS.CS_NumIA)).*Lambda2.MA);


%%% Lower bound for mu
% New Results
Mu_Lb.AL_Dauphin = abs(Mu.AL_Dauphin - 2*rmmissing(AL_Dauphin_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(AL_Dauphin_CS.CS_NumM)));
Mu_Lb.FL_Shell = abs(Mu.FL_Shell - 2*rmmissing(FL_Shell_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(FL_Shell_CS.CS_NumM)));
% Mu_Lb.GA_LittleTybee = abs(Mu.GA_LittleTybee - 2*rmmissing(GA_LittleTybee_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(GA_LittleTybee_CS.CS_NumM)));
Mu_Lb.MA_Plum = abs(Mu.MA_Plum - 2*rmmissing(MA_Plum_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(MA_Plum_CS.CS_NumM)));
Mu_Lb.NC_BaldHead = abs(Mu.NC_BaldHead - 2*rmmissing(NC_BaldHead_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(NC_BaldHead_CS.CS_NumM)));
Mu_Lb.NC_Masonboro = abs(Mu.NC_Masonboro - 2*rmmissing(NC_Masonboro_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(NC_Masonboro_CS.CS_NumM)));
Mu_Lb.NC_Portsmouth = abs(Mu.NC_Portsmouth - 2*rmmissing(NC_Portsmouth_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(NC_Portsmouth_CS.CS_NumM)));
% Mu_Lb.SC_Lighthouse = abs(Mu.SC_Lighthouse - 2*rmmissing(SC_Lighthouse_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(SC_Lighthouse_CS.CS_NumM)));
% Mu_Lb.SC_Pockoy = abs(Mu.SC_Pockoy - 2*rmmissing(SC_Pockoy_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(SC_Pockoy_CS.CS_NumM)));
Mu_Lb.TX_Follets = abs(Mu.TX_Follets - 2*rmmissing(TX_Follets_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_Follets_CS.CS_NumM)));
Mu_Lb.TX_Hog = abs(Mu.TX_Hog - 2*rmmissing(TX_Hog_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_Hog_CS.CS_NumM)));
Mu_Lb.TX_MatagordaPeninsula = abs(Mu.TX_MatagordaPeninsula - 2*rmmissing(TX_MatagordaPeninsula_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumM)));
% Mu_Lb.TX_Padre = abs(Mu.TX_Padre - 2*rmmissing(TX_Padre_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_Padre_CS.CS_NumM)));
Mu_Lb.VA_Assateague = abs(Mu.VA_Assateague - 2*rmmissing(VA_Assateague_HS.HS_SumM)./chi2inv(0.975,2*rmmissing(VA_Assateague_HS.HS_NumM)));
% Former Results
Mu_Lb.VA = abs(Mu.VA - 2*rmmissing(VA_HS.HS_SumM)./chi2inv(0.975,2*rmmissing(VA_HS.HS_NumM)));
Mu_Lb.TX_GV = abs(Mu.TX_GV - 2*rmmissing(TX_GV_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_GV_CS.CS_NumM)));
Mu_Lb.TX_CC = abs(Mu.TX_CC - 2*rmmissing(TX_CC_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(TX_CC_CS.CS_NumM)));
Mu_Lb.OR_SB = abs(Mu.OR_SB - 2*rmmissing(OR_SB_HS.HS_SumM)./chi2inv(0.975,2*rmmissing(OR_SB_HS.HS_NumM)));
Mu_Lb.CA = abs(Mu.CA - 2*rmmissing(CA_HS.HS_SumM)./chi2inv(0.975,2*rmmissing(CA_HS.HS_NumM)));
Mu_Lb.FL = abs(Mu.FL - 2*rmmissing(FL_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(FL_CS.CS_NumM)));
Mu_Lb.FL_SP = abs(Mu.FL_SP - 2*rmmissing(FL_SP_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(FL_SP_CS.CS_NumM)));
Mu_Lb.AUS_NSW = abs(Mu.AUS_NSW - 2*rmmissing(AUS_NSW_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(AUS_NSW_CS.CS_NumM)));
Mu_Lb.HI = abs(Mu.HI - 2*rmmissing(HI_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(HI_CS.CS_NumM)));
Mu_Lb.IT = abs(Mu.IT - 2*rmmissing(IT_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(IT_CS.CS_NumM)));
Mu_Lb.AK = abs(Mu.AK - 2*rmmissing(AK_HS.HS_SumM)./chi2inv(0.975,2*rmmissing(AK_HS.HS_NumM)));
Mu_Lb.MA = abs(Mu.MA - 2*rmmissing(MA_CS.CS_SumM)./chi2inv(0.975,2*rmmissing(MA_CS.CS_NumM)));


%%% Upper bound for mu
% New Results
Mu_Ub.AL_Dauphin = abs(Mu.AL_Dauphin - 2*rmmissing(AL_Dauphin_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(AL_Dauphin_CS.CS_NumM)));
Mu_Ub.FL_Shell = abs(Mu.FL_Shell - 2*rmmissing(FL_Shell_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(FL_Shell_CS.CS_NumM)));
% Mu_Ub.GA_LittleTybee = abs(Mu.GA_LittleTybee - 2*rmmissing(GA_LittleTybee_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(GA_LittleTybee_CS.CS_NumM)));
Mu_Ub.MA_Plum = abs(Mu.MA_Plum - 2*rmmissing(MA_Plum_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(MA_Plum_CS.CS_NumM)));
Mu_Ub.NC_BaldHead = abs(Mu.NC_BaldHead - 2*rmmissing(NC_BaldHead_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(NC_BaldHead_CS.CS_NumM)));
Mu_Ub.NC_Masonboro = abs(Mu.NC_Masonboro - 2*rmmissing(NC_Masonboro_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(NC_Masonboro_CS.CS_NumM)));
Mu_Ub.NC_Portsmouth = abs(Mu.NC_Portsmouth - 2*rmmissing(NC_Portsmouth_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(NC_Portsmouth_CS.CS_NumM)));
% Mu_Ub.SC_Lighthouse = abs(Mu.SC_Lighthouse - 2*rmmissing(SC_Lighthouse_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(SC_Lighthouse_CS.CS_NumM)));
% Mu_Ub.SC_Pockoy = abs(Mu.SC_Pockoy - 2*rmmissing(SC_Pockoy_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(SC_Pockoy_CS.CS_NumM)));
Mu_Ub.TX_Follets = abs(Mu.TX_Follets - 2*rmmissing(TX_Follets_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_Follets_CS.CS_NumM)));
Mu_Ub.TX_Hog = abs(Mu.TX_Hog - 2*rmmissing(TX_Hog_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_Hog_CS.CS_NumM)));
Mu_Ub.TX_MatagordaPeninsula = abs(Mu.TX_MatagordaPeninsula - 2*rmmissing(TX_MatagordaPeninsula_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_MatagordaPeninsula_CS.CS_NumM)));
% Mu_Ub.TX_Padre = abs(Mu.TX_Padre - 2*rmmissing(TX_Padre_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_Padre_CS.CS_NumM)));
Mu_Ub.VA_Assateague = abs(Mu.VA_Assateague - 2*rmmissing(VA_Assateague_HS.HS_SumM)./chi2inv(0.025,2*rmmissing(VA_Assateague_HS.HS_NumM)));
% Former Results
Mu_Ub.VA = abs(Mu.VA - 2*rmmissing(VA_HS.HS_SumM)./chi2inv(0.025,2*rmmissing(VA_HS.HS_NumM)));
Mu_Ub.TX_GV = abs(Mu.TX_GV - 2*rmmissing(TX_GV_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_GV_CS.CS_NumM)));
Mu_Ub.TX_CC = abs(Mu.TX_CC - 2*rmmissing(TX_CC_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(TX_CC_CS.CS_NumM)));
Mu_Ub.OR_SB = abs(Mu.OR_SB - 2*rmmissing(OR_SB_HS.HS_SumM)./chi2inv(0.025,2*rmmissing(OR_SB_HS.HS_NumM)));
Mu_Ub.CA = abs(Mu.CA - 2*rmmissing(CA_HS.HS_SumM)./chi2inv(0.025,2*rmmissing(CA_HS.HS_NumM)));
Mu_Ub.FL = abs(Mu.FL - 2*rmmissing(FL_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(FL_CS.CS_NumM)));
Mu_Ub.FL_SP = abs(Mu.FL_SP - 2*rmmissing(FL_SP_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(FL_SP_CS.CS_NumM)));
Mu_Ub.AUS_NSW = abs(Mu.AUS_NSW - 2*rmmissing(AUS_NSW_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(AUS_NSW_CS.CS_NumM)));
Mu_Ub.HI = abs(Mu.HI - 2*rmmissing(HI_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(HI_CS.CS_NumM)));
Mu_Ub.IT = abs(Mu.IT - 2*rmmissing(IT_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(IT_CS.CS_NumM)));
Mu_Ub.AK = abs(Mu.AK - 2*rmmissing(AK_HS.HS_SumM)./chi2inv(0.025,2*rmmissing(AK_HS.HS_NumM)));
Mu_Ub.MA = abs(Mu.MA - 2*rmmissing(MA_CS.CS_SumM)./chi2inv(0.025,2*rmmissing(MA_CS.CS_NumM)));

% Lower bound for beach elevation
% New Results
BeachLb.AL_Dauphin = IA_Lb.AL_Dauphin.*Mu.AL_Dauphin./Lambda2.AL_Dauphin; BeachLb.AL_Dauphin = BeachLb.AL_Dauphin(find(round(Threshold.AL_Dauphin - Beach.AL_Dauphin,1) == 0));
BeachLb.FL_Shell = IA_Lb.FL_Shell.*Mu.FL_Shell./Lambda2.FL_Shell; BeachLb.FL_Shell = BeachLb.FL_Shell(find(round(Threshold.FL_Shell - Beach.FL_Shell,1) == 0));
% BeachLb.GA_LittleTybee = IA_Lb.GA_LittleTybee.*Mu.GA_LittleTybee./Lambda2.GA_LittleTybee; BeachLb.GA_LittleTybee = BeachLb.GA_LittleTybee(find(round(Threshold.GA_LittleTybee - Beach.GA_LittleTybee,1) == 0));
BeachLb.MA_Plum = IA_Lb.MA_Plum.*Mu.MA_Plum./Lambda2.MA_Plum; BeachLb.MA_Plum = BeachLb.MA_Plum(find(round(Threshold.MA_Plum - Beach.MA_Plum,1) == 0));
BeachLb.NC_BaldHead = IA_Lb.NC_BaldHead.*Mu.NC_BaldHead./Lambda2.NC_BaldHead; BeachLb.NC_BaldHead = BeachLb.NC_BaldHead(find(round(Threshold.NC_BaldHead - Beach.NC_BaldHead,1) == 0));
BeachLb.NC_Masonboro = IA_Lb.NC_Masonboro.*Mu.NC_Masonboro./Lambda2.NC_Masonboro; BeachLb.NC_Masonboro = BeachLb.NC_Masonboro(find(round(Threshold.NC_Masonboro - Beach.NC_Masonboro,1) == 0));
BeachLb.NC_Portsmouth = IA_Lb.NC_Portsmouth.*Mu.NC_Portsmouth./Lambda2.NC_Portsmouth; BeachLb.NC_Portsmouth = BeachLb.NC_Portsmouth(find(round(Threshold.NC_Portsmouth - Beach.NC_Portsmouth,1) == 0));
% BeachLb.SC_Lighthouse = IA_Lb.SC_Lighthouse.*Mu.SC_Lighthouse./Lambda2.SC_Lighthouse; BeachLb.SC_Lighthouse = BeachLb.SC_Lighthouse(find(round(Threshold.SC_Lighthouse - Beach.SC_Lighthouse,1) == 0));
% BeachLb.SC_Pockoy = IA_Lb.SC_Pockoy.*Mu.SC_Pockoy./Lambda2.SC_Pockoy; BeachLb.SC_Pockoy = BeachLb.SC_Pockoy(find(round(Threshold.SC_Pockoy - Beach.SC_Pockoy,1) == 0));
BeachLb.TX_Follets = IA_Lb.TX_Follets.*Mu.TX_Follets./Lambda2.TX_Follets; BeachLb.TX_Follets = BeachLb.TX_Follets(find(round(Threshold.TX_Follets - Beach.TX_Follets,1) == 0));
BeachLb.TX_Hog = IA_Lb.TX_Hog.*Mu.TX_Hog./Lambda2.TX_Hog; BeachLb.TX_Hog = BeachLb.TX_Hog(find(round(Threshold.TX_Hog - Beach.TX_Hog,1) == 0));
BeachLb.TX_MatagordaPeninsula = IA_Lb.TX_MatagordaPeninsula.*Mu.TX_MatagordaPeninsula./Lambda2.TX_MatagordaPeninsula; BeachLb.TX_MatagordaPeninsula = BeachLb.TX_MatagordaPeninsula(find(round(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula,1) == 0));
% BeachLb.TX_Padre = IA_Lb.TX_Padre.*Mu.TX_Padre./Lambda2.TX_Padre; BeachLb.TX_Padre = BeachLb.TX_Padre(find(round(Threshold.TX_Padre - Beach.TX_Padre,1) == 0));
BeachLb.VA_Assateague = IA_Lb.VA_Assateague.*Mu.VA_Assateague./Lambda2.VA_Assateague; BeachLb.VA_Assateague = BeachLb.VA_Assateague(find(round(Threshold.VA_Assateague - Beach.VA_Assateague,1) == 0));
% Former Results
BeachLb.VA = IA_Lb.VA.*Mu.VA./Lambda2.VA; BeachLb.VA = BeachLb.VA(find(round(Threshold.VA - Beach.VA,1) == 0));
BeachLb.TX_GV = IA_Lb.TX_GV.*Mu.TX_GV./Lambda2.TX_GV; BeachLb.TX_GV = BeachLb.TX_GV(find(round(Threshold.TX_GV - Beach.TX_GV,1) == 0));
BeachLb.TX_CC = IA_Lb.TX_CC.*Mu.TX_CC./Lambda2.TX_CC; BeachLb.TX_CC = BeachLb.TX_CC(find(round(Threshold.TX_CC - Beach.TX_CC,1) == 0));
BeachLb.OR_SB = IA_Lb.OR_SB.*Mu.OR_SB./Lambda2.OR_SB; BeachLb.OR_SB = BeachLb.OR_SB(find(round(Threshold.OR_SB - Beach.OR_SB,1) == 0));
BeachLb.CA = IA_Lb.CA.*Mu.CA./Lambda2.CA; BeachLb.CA = BeachLb.CA(find(round(Threshold.CA - Beach.CA,1) == 0));
BeachLb.FL = IA_Lb.FL.*Mu.FL./Lambda2.FL; BeachLb.FL = BeachLb.FL(find(round(Threshold.FL - Beach.FL,1) == 0));
BeachLb.FL_SP = IA_Lb.FL_SP.*Mu.FL_SP./Lambda2.FL_SP; BeachLb.FL_SP = BeachLb.FL_SP(find(round(Threshold.FL_SP - Beach.FL_SP,1) == 0));
BeachLb.AUS_NSW = IA_Lb.AUS_NSW.*Mu.AUS_NSW./Lambda2.AUS_NSW; BeachLb.AUS_NSW = BeachLb.AUS_NSW(find(round(Threshold.AUS_NSW - Beach.AUS_NSW,1) == 0));
BeachLb.HI = IA_Lb.HI.*Mu.HI./Lambda2.HI; BeachLb.HI = BeachLb.HI(find(round(Threshold.HI - Beach.HI,1) == 0));
BeachLb.IT = IA_Lb.IT.*Mu.IT./Lambda2.IT; BeachLb.IT = BeachLb.IT(find(round(Threshold.IT - Beach.IT,1) == 0));
BeachLb.AK = IA_Lb.AK.*Mu.AK./Lambda2.AK; BeachLb.AK = BeachLb.AK(find(round(Threshold.AK - Beach.AK,1) == 0));
BeachLb.MA = IA_Lb.MA.*Mu.MA./Lambda2.MA; BeachLb.MA = BeachLb.MA(find(round(Threshold.MA - Beach.MA,1) == 0));

% Upper bound for beach elevation
% New Results
BeachUb.AL_Dauphin = IA_Ub.AL_Dauphin.*Mu.AL_Dauphin./Lambda2.AL_Dauphin; BeachUb.AL_Dauphin = BeachUb.AL_Dauphin(find(round(Threshold.AL_Dauphin - Beach.AL_Dauphin,1) == 0));
BeachUb.FL_Shell = IA_Ub.FL_Shell.*Mu.FL_Shell./Lambda2.FL_Shell; BeachUb.FL_Shell = BeachUb.FL_Shell(find(round(Threshold.FL_Shell - Beach.FL_Shell,1) == 0));
% BeachUb.GA_LittleTybee = IA_Ub.GA_LittleTybee.*Mu.GA_LittleTybee./Lambda2.GA_LittleTybee; BeachUb.GA_LittleTybee = BeachUb.GA_LittleTybee(find(round(Threshold.GA_LittleTybee - Beach.GA_LittleTybee,1) == 0));
BeachUb.MA_Plum = IA_Ub.MA_Plum.*Mu.MA_Plum./Lambda2.MA_Plum; BeachUb.MA_Plum = BeachUb.MA_Plum(find(round(Threshold.MA_Plum - Beach.MA_Plum,1) == 0));
BeachUb.NC_BaldHead = IA_Ub.NC_BaldHead.*Mu.NC_BaldHead./Lambda2.NC_BaldHead; BeachUb.NC_BaldHead = BeachUb.NC_BaldHead(find(round(Threshold.NC_BaldHead - Beach.NC_BaldHead,1) == 0));
BeachUb.NC_Masonboro = IA_Ub.NC_Masonboro.*Mu.NC_Masonboro./Lambda2.NC_Masonboro; BeachUb.NC_Masonboro = BeachUb.NC_Masonboro(find(round(Threshold.NC_Masonboro - Beach.NC_Masonboro,1) == 0));
BeachUb.NC_Portsmouth = IA_Ub.NC_Portsmouth.*Mu.NC_Portsmouth./Lambda2.NC_Portsmouth; BeachUb.NC_Portsmouth = BeachUb.NC_Portsmouth(find(round(Threshold.NC_Portsmouth - Beach.NC_Portsmouth,1) == 0));
% BeachUb.SC_Lighthouse = IA_Ub.SC_Lighthouse.*Mu.SC_Lighthouse./Lambda2.SC_Lighthouse; BeachUb.SC_Lighthouse = BeachUb.SC_Lighthouse(find(round(Threshold.SC_Lighthouse - Beach.SC_Lighthouse,1) == 0));
% BeachUb.SC_Pockoy = IA_Ub.SC_Pockoy.*Mu.SC_Pockoy./Lambda2.SC_Pockoy; BeachUb.SC_Pockoy = BeachUb.SC_Pockoy(find(round(Threshold.SC_Pockoy - Beach.SC_Pockoy,1) == 0));
BeachUb.TX_Follets = IA_Ub.TX_Follets.*Mu.TX_Follets./Lambda2.TX_Follets; BeachUb.TX_Follets = BeachUb.TX_Follets(find(round(Threshold.TX_Follets - Beach.TX_Follets,1) == 0));
BeachUb.TX_Hog = IA_Ub.TX_Hog.*Mu.TX_Hog./Lambda2.TX_Hog; BeachUb.TX_Hog = BeachUb.TX_Hog(find(round(Threshold.TX_Hog - Beach.TX_Hog,1) == 0));
BeachUb.TX_MatagordaPeninsula = IA_Ub.TX_MatagordaPeninsula.*Mu.TX_MatagordaPeninsula./Lambda2.TX_MatagordaPeninsula; BeachUb.TX_MatagordaPeninsula = BeachUb.TX_MatagordaPeninsula(find(round(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula,1) == 0));
% BeachUb.TX_Padre = IA_Ub.TX_Padre.*Mu.TX_Padre./Lambda2.TX_Padre; BeachUb.TX_Padre = BeachUb.TX_Padre(find(round(Threshold.TX_Padre - Beach.TX_Padre,1) == 0));
BeachUb.VA_Assateague = IA_Ub.VA_Assateague.*Mu.VA_Assateague./Lambda2.VA_Assateague; BeachUb.VA_Assateague = BeachUb.VA_Assateague(find(round(Threshold.VA_Assateague - Beach.VA_Assateague,1) == 0));
% Former Results
BeachUb.VA = IA_Ub.VA.*Mu.VA./Lambda2.VA; BeachUb.VA = BeachUb.VA(find(round(Threshold.VA - Beach.VA,1) == 0));
BeachUb.TX_GV = IA_Ub.TX_GV.*Mu.TX_GV./Lambda2.TX_GV; BeachUb.TX_GV = BeachUb.TX_GV(find(round(Threshold.TX_GV - Beach.TX_GV,1) == 0));
BeachUb.TX_CC = IA_Ub.TX_CC.*Mu.TX_CC./Lambda2.TX_CC; BeachUb.TX_CC = BeachUb.TX_CC(find(round(Threshold.TX_CC - Beach.TX_CC,1) == 0));
BeachUb.OR_SB = IA_Ub.OR_SB.*Mu.OR_SB./Lambda2.OR_SB; BeachUb.OR_SB = BeachUb.OR_SB(find(round(Threshold.OR_SB - Beach.OR_SB,1) == 0));
BeachUb.CA = IA_Ub.CA.*Mu.CA./Lambda2.CA; BeachUb.CA = BeachUb.CA(find(round(Threshold.CA - Beach.CA,1) == 0));
BeachUb.FL = IA_Ub.FL.*Mu.FL./Lambda2.FL; BeachUb.FL = BeachUb.FL(find(round(Threshold.FL - Beach.FL,1) == 0));
BeachUb.FL_SP = IA_Ub.FL_SP.*Mu.FL_SP./Lambda2.FL_SP; BeachUb.FL_SP = BeachUb.FL_SP(find(round(Threshold.FL_SP - Beach.FL_SP,1) == 0));
BeachUb.AUS_NSW = IA_Ub.AUS_NSW.*Mu.AUS_NSW./Lambda2.AUS_NSW; BeachUb.AUS_NSW = BeachUb.AUS_NSW(find(round(Threshold.AUS_NSW - Beach.AUS_NSW,1) == 0));
BeachUb.HI = IA_Ub.HI.*Mu.HI./Lambda2.HI; BeachUb.HI = BeachUb.HI(find(round(Threshold.HI - Beach.HI,1) == 0));
BeachUb.IT = IA_Ub.IT.*Mu.IT./Lambda2.IT; BeachUb.IT = BeachUb.IT(find(round(Threshold.IT - Beach.IT,1) == 0));
BeachUb.AK = IA_Ub.AK.*Mu.AK./Lambda2.AK; BeachUb.AK = BeachUb.AK(find(round(Threshold.AK - Beach.AK,1) == 0));
BeachUb.MA = IA_Ub.MA.*Mu.MA./Lambda2.MA; BeachUb.MA = BeachUb.MA(find(round(Threshold.MA - Beach.MA,1) == 0));
