
%%% Wave Runup Parameter %%%
% New Results
WRP.AL_Dauphin = sqrt(AL_Dauphin_CS.DailySWH.*(9.80665/(2*pi)).*(AL_Dauphin_CS.DailyPP.^2));
WRP.FL_Shell = sqrt(FL_Shell_CS.DailySWH.*(9.80665/(2*pi)).*(FL_Shell_CS.DailyPP.^2));
% WRP.GA_LittleTybee = sqrt(GA_LittleTybee_CS.DailySWH.*(9.80665/(2*pi)).*(GA_LittleTybee_CS.DailyPP.^2));
WRP.MA_Plum = sqrt(MA_Plum_CS.DailySWH.*(9.80665/(2*pi)).*(MA_Plum_CS.DailyPP.^2));
WRP.NC_BaldHead = sqrt(NC_BaldHead_CS.DailySWH.*(9.80665/(2*pi)).*(NC_BaldHead_CS.DailyPP.^2));
WRP.NC_Masonboro = sqrt(NC_Masonboro_CS.DailySWH.*(9.80665/(2*pi)).*(NC_Masonboro_CS.DailyPP.^2));
WRP.NC_Portsmouth = sqrt(NC_Portsmouth_CS.DailySWH.*(9.80665/(2*pi)).*(NC_Portsmouth_CS.DailyPP.^2));
% WRP.SC_Lighthouse = sqrt(SC_Lighthouse_CS.DailySWH.*(9.80665/(2*pi)).*(SC_Lighthouse_CS.DailyPP.^2));
% WRP.SC_Pockoy = sqrt(SC_Pockoy_CS.DailySWH.*(9.80665/(2*pi)).*(SC_Pockoy_CS.DailyPP.^2));
WRP.TX_Follets = sqrt(TX_Follets_CS.DailySWH.*(9.80665/(2*pi)).*(TX_Follets_CS.DailyPP.^2));
WRP.TX_Hog = sqrt(TX_Hog_CS.DailySWH.*(9.80665/(2*pi)).*(TX_Hog_CS.DailyPP.^2));
WRP.TX_MatagordaPeninsula = sqrt(TX_MatagordaPeninsula_CS.DailySWH.*(9.80665/(2*pi)).*(TX_MatagordaPeninsula_CS.DailyPP.^2));
% WRP.TX_Padre = sqrt(TX_Padre_CS.DailySWH.*(9.80665/(2*pi)).*(TX_Padre_CS.DailyPP.^2));
WRP.VA_Assateague = sqrt(VA_Assateague_HS.DailySWH.*(9.80665/(2*pi)).*(VA_Assateague_HS.DailyPP.^2));
% Former Results
WRP.VA = sqrt(VA_HS.DailySWH.*(9.80665/(2*pi)).*(VA_HS.DailyPP.^2));
WRP.TX_GV = sqrt(TX_GV_CS.DailySWH.*(9.80665/(2*pi)).*(TX_GV_CS.DailyPP.^2));
WRP.TX_CC = sqrt(TX_CC_CS.DailySWH.*(9.80665/(2*pi)).*(TX_CC_CS.DailyPP.^2));
WRP.OR_SB = sqrt(OR_SB_HS.DailySWH.*(9.80665/(2*pi)).*(OR_SB_HS.DailyPP.^2));
WRP.CA = sqrt(CA_HS.DailySWH.*(9.80665/(2*pi)).*(CA_HS.DailyPP.^2));
WRP.FL = sqrt(FL_CS.DailySWH.*(9.80665/(2*pi)).*(FL_CS.DailyPP.^2));
WRP.FL_SP = sqrt(FL_SP_CS.DailySWH.*(9.80665/(2*pi)).*(FL_SP_CS.DailyPP.^2));
WRP.AUS_NSW = sqrt(AUS_NSW_CS.DailySWH.*(9.80665/(2*pi)).*(AUS_NSW_CS.DailyPP.^2));
WRP.HI = sqrt(HI_CS.DailySWH.*(9.80665/(2*pi)).*(HI_CS.DailyPP.^2));
WRP.IT = sqrt(IT_CS.DailySWH.*(9.80665/(2*pi)).*(IT_CS.DailyPP.^2));
WRP.AK = sqrt(AK_HS.DailySWH.*(9.80665/(2*pi)).*(AK_HS.DailyPP.^2));
WRP.MA = sqrt(MA_CS.DailySWH.*(9.80665/(2*pi)).*(MA_CS.DailyPP.^2));

%%% Average Wave runup %%%
ftheta =@(Slope) 1.1*0.35.*Slope + 1.1/2*sqrt(0.563.*Slope.^2 + 0.004);
% New Results
WRmean.AL_Dauphin = ftheta(Slopes.AL_Dauphin) .* mean(rmmissing(WRP.AL_Dauphin));
WRmean.FL_Shell = ftheta(Slopes.FL_Shell) .* mean(rmmissing(WRP.FL_Shell));
% WRmean.GA_LittleTybee = ftheta(Slopes.GA_LittleTybee) .* mean(rmmissing(WRP.GA_LittleTybee));
WRmean.MA_Plum = ftheta(Slopes.MA_Plum) .* mean(rmmissing(WRP.MA_Plum));
WRmean.NC_BaldHead = ftheta(Slopes.NC_BaldHead) .* mean(rmmissing(WRP.NC_BaldHead));
WRmean.NC_Masonboro = ftheta(Slopes.NC_Masonboro) .* mean(rmmissing(WRP.NC_Masonboro));
WRmean.NC_Portsmouth = ftheta(Slopes.NC_Portsmouth) .* mean(rmmissing(WRP.NC_Portsmouth));
% WRmean.SC_Lighthouse = ftheta(Slopes.SC_Lighthouse) .* mean(rmmissing(WRP.SC_Lighthouse));
% WRmean.SC_Pockoy = ftheta(Slopes.SC_Pockoy) .* mean(rmmissing(WRP.SC_Pockoy));
WRmean.TX_Follets = ftheta(Slopes.TX_Follets) .* mean(rmmissing(WRP.TX_Follets));
WRmean.TX_Hog = ftheta(Slopes.TX_Hog) .* mean(rmmissing(WRP.TX_Hog));
WRmean.TX_MatagordaPeninsula = ftheta(Slopes.TX_MatagordaPeninsula) .* mean(rmmissing(WRP.TX_MatagordaPeninsula));
% WRmean.TX_Padre = ftheta(Slopes.TX_Padre) .* mean(rmmissing(WRP.TX_Padre));
WRmean.VA_Assateague = ftheta(Slopes.VA_Assateague) .* mean(rmmissing(WRP.VA_Assateague));
% Former Results
WRmean.VA = ftheta(Slopes.VA) .* mean(rmmissing(WRP.VA));
WRmean.TX_GV = ftheta(Slopes.TX_GV) .* mean(rmmissing(WRP.TX_GV));
WRmean.TX_CC = ftheta(Slopes.TX_CC) .* mean(rmmissing(WRP.TX_CC));
WRmean.OR_SB = ftheta(Slopes.OR_SB) .* mean(rmmissing(WRP.OR_SB));
WRmean.CA = ftheta(Slopes.CA) .* mean(rmmissing(WRP.CA));
WRmean.FL = ftheta(Slopes.FL) .* mean(rmmissing(WRP.FL));
WRmean.FL_SP = ftheta(Slopes.FL_SP) .* mean(rmmissing(WRP.FL_SP));
WRmean.AUS_NSW = ftheta(Slopes.AUS_NSW) .* mean(rmmissing(WRP.AUS_NSW));
WRmean.HI = ftheta(Slopes.HI) .* mean(rmmissing(WRP.HI));
WRmean.IT = ftheta(Slopes.IT) .* mean(rmmissing(WRP.IT));
WRmean.AK = ftheta(Slopes.AK) .* mean(rmmissing(WRP.AK));
WRmean.MA = ftheta(Slopes.MA) .* mean(rmmissing(WRP.MA));


%%% Wave runup parameter standard deviation %%%
% New Results
WRsd.AL_Dauphin = std(ftheta(Slopes.AL_Dauphin) .* rmmissing(WRP.AL_Dauphin));
WRsd.FL_Shell = std(ftheta(Slopes.FL_Shell) .* rmmissing(WRP.FL_Shell));
% WRsd.GA_LittleTybee = std(ftheta(Slopes.GA_LittleTybee) .* rmmissing(WRP.GA_LittleTybee));
WRsd.MA_Plum = std(ftheta(Slopes.MA_Plum) .* rmmissing(WRP.MA_Plum));
WRsd.NC_BaldHead = std(ftheta(Slopes.NC_BaldHead) .* rmmissing(WRP.NC_BaldHead));
WRsd.NC_Masonboro = std(ftheta(Slopes.NC_Masonboro) .* rmmissing(WRP.NC_Masonboro));
WRsd.NC_Portsmouth = std(ftheta(Slopes.NC_Portsmouth) .* rmmissing(WRP.NC_Portsmouth));
% WRsd.SC_Lighthouse = std(ftheta(Slopes.SC_Lighthouse) .* rmmissing(WRP.SC_Lighthouse));
% WRsd.SC_Pockoy = std(ftheta(Slopes.SC_Pockoy) .* rmmissing(WRP.SC_Pockoy));
WRsd.TX_Follets = std(ftheta(Slopes.TX_Follets) .* rmmissing(WRP.TX_Follets));
WRsd.TX_Hog = std(ftheta(Slopes.TX_Hog) .* rmmissing(WRP.TX_Hog));
WRsd.TX_MatagordaPeninsula = std(ftheta(Slopes.TX_MatagordaPeninsula) .* rmmissing(WRP.TX_MatagordaPeninsula));
% WRsd.TX_Padre = std(ftheta(Slopes.TX_Padre) .* rmmissing(WRP.TX_Padre));
WRsd.VA_Assateague = std(ftheta(Slopes.VA_Assateague) .* rmmissing(WRP.VA_Assateague));
% Former Results
WRsd.VA = std(ftheta(Slopes.VA) .* rmmissing(WRP.VA));
WRsd.TX_GV = std(ftheta(Slopes.TX_GV) .* rmmissing(WRP.TX_GV));
WRsd.TX_CC = std(ftheta(Slopes.TX_CC) .* rmmissing(WRP.TX_CC));
WRsd.OR_SB = std(ftheta(Slopes.OR_SB) .* rmmissing(WRP.OR_SB));
WRsd.CA = std(ftheta(Slopes.CA) .* rmmissing(WRP.CA));
WRsd.FL = std(ftheta(Slopes.FL) .* rmmissing(WRP.FL));
WRsd.FL_SP = std(ftheta(Slopes.FL_SP) .* rmmissing(WRP.FL_SP));
WRsd.AUS_NSW = std(ftheta(Slopes.AUS_NSW) .* rmmissing(WRP.AUS_NSW));
WRsd.HI = std(ftheta(Slopes.HI) .* rmmissing(WRP.HI));
WRsd.IT = std(ftheta(Slopes.IT) .* rmmissing(WRP.IT));
WRsd.AK = std(ftheta(Slopes.AK) .* rmmissing(WRP.AK));
WRsd.MA = std(ftheta(Slopes.MA) .* rmmissing(WRP.MA));


%%% Aggregating mark values above beach elevation %%%
NumValues = sum(VA_HS.HS_NumM((Threshold.VA - Beach.VA)>-0.05)); ProbM = VA_HS.HS_NumM((Threshold.VA - Beach.VA)>-0.05)/NumValues;
M.VA = sum(Mu.VA((Threshold.VA - Beach.VA)>-0.05).*ProbM);
M_Lb.VA = M.VA - sum((Mu.VA((Threshold.VA - Beach.VA)>-0.05) - Mu_Lb.VA((Threshold.VA - Beach.VA)>-0.05)).*ProbM);
M_Ub.VA = sum((Mu.VA((Threshold.VA - Beach.VA)>-0.05) + Mu_Ub.VA((Threshold.VA - Beach.VA)>-0.05)).*ProbM) - M.VA; clear NumValues ProbM

NumValues = sum(TX_GV_CS.CS_NumM((Threshold.TX_GV - Beach.TX_GV)>-0.05)); ProbM = TX_GV_CS.CS_NumM((Threshold.TX_GV - Beach.TX_GV)>-0.05)/NumValues;
M.TX_GV = sum(Mu.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05).*ProbM);
M_Lb.TX_GV = M.TX_GV - sum((Mu.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05) - Mu_Lb.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05)).*ProbM);
M_Ub.TX_GV = sum((Mu.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05) + Mu_Ub.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05)).*ProbM) - M.TX_GV; clear NumValues ProbM

NumValues = sum(TX_CC_CS.CS_NumM((Threshold.TX_CC - Beach.TX_CC)>-0.05)); ProbM = TX_CC_CS.CS_NumM((Threshold.TX_CC - Beach.TX_CC)>-0.05)/NumValues;
M.TX_CC = sum(Mu.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05).*ProbM);
M_Lb.TX_CC = M.TX_CC - sum((Mu.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05) - Mu_Lb.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05)).*ProbM);
M_Ub.TX_CC = sum((Mu.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05) + Mu_Ub.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05)).*ProbM) - M.TX_CC; clear NumValues ProbM

NumValues = sum(OR_SB_HS.HS_NumM((Threshold.OR_SB - Beach.OR_SB)>-0.05)); ProbM = OR_SB_HS.HS_NumM((Threshold.OR_SB - Beach.OR_SB)>-0.05)/NumValues;
M.OR_SB = sum(Mu.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05).*ProbM);
M_Lb.OR_SB = M.OR_SB - sum((Mu.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05) - Mu_Lb.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05)).*ProbM);
M_Ub.OR_SB = sum((Mu.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05) + Mu_Ub.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05)).*ProbM) - M.OR_SB; clear NumValues ProbM

NumValues = sum(CA_HS.HS_NumM((Threshold.CA - Beach.CA)>-0.05)); ProbM = CA_HS.HS_NumM((Threshold.CA - Beach.CA)>-0.05)/NumValues;
M.CA = sum(Mu.CA((Threshold.CA - Beach.CA)>-0.05).*ProbM);
M_Lb.CA = M.CA - sum((Mu.CA((Threshold.CA - Beach.CA)>-0.05) - Mu_Lb.CA((Threshold.CA - Beach.CA)>-0.05)).*ProbM);
M_Ub.CA = sum((Mu.CA((Threshold.CA - Beach.CA)>-0.05) + Mu_Ub.CA((Threshold.CA - Beach.CA)>-0.05)).*ProbM) - M.CA; clear NumValues ProbM

NumValues = sum(FL_CS.CS_NumM((Threshold.FL - Beach.FL)>-0.05)); ProbM = FL_CS.CS_NumM((Threshold.FL - Beach.FL)>-0.05)/NumValues;
M.FL = sum(Mu.FL((Threshold.FL - Beach.FL)>-0.05).*ProbM);
M_Lb.FL = M.FL - sum((Mu.FL((Threshold.FL - Beach.FL)>-0.05) - Mu_Lb.FL((Threshold.FL - Beach.FL)>-0.05)).*ProbM);
M_Ub.FL = sum((Mu.FL((Threshold.FL - Beach.FL)>-0.05) + Mu_Ub.FL((Threshold.FL - Beach.FL)>-0.05)).*ProbM) - M.FL; clear NumValues ProbM

NumValues = sum(FL_SP_CS.CS_NumM((Threshold.FL_SP - Beach.FL_SP)>-0.05)); ProbM = FL_SP_CS.CS_NumM((Threshold.FL_SP - Beach.FL_SP)>-0.05)/NumValues;
M.FL_SP = sum(Mu.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05).*ProbM);
M_Lb.FL_SP = M.FL_SP - sum((Mu.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05) - Mu_Lb.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05)).*ProbM);
M_Ub.FL_SP = sum((Mu.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05) + Mu_Ub.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05)).*ProbM) - M.FL_SP; clear NumValues ProbM

NumValues = sum(AUS_NSW_CS.CS_NumM((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05)); ProbM = AUS_NSW_CS.CS_NumM((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05)/NumValues;
M.AUS_NSW = sum(Mu.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05).*ProbM);
M_Lb.AUS_NSW = M.AUS_NSW - sum((Mu.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05) - Mu_Lb.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05)).*ProbM);
M_Ub.AUS_NSW = sum((Mu.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05) + Mu_Ub.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05)).*ProbM) - M.AUS_NSW; clear NumValues ProbM

NumValues = sum(HI_CS.CS_NumM((Threshold.HI - Beach.HI)>-0.05)); ProbM = HI_CS.CS_NumM((Threshold.HI - Beach.HI)>-0.05)/NumValues;
M.HI = sum(Mu.HI((Threshold.HI - Beach.HI)>-0.05).*ProbM);
M_Lb.HI = M.HI - sum((Mu.HI((Threshold.HI - Beach.HI)>-0.05) - Mu_Lb.HI((Threshold.HI - Beach.HI)>-0.05)).*ProbM);
M_Ub.HI = sum((Mu.HI((Threshold.HI - Beach.HI)>-0.05) + Mu_Ub.HI((Threshold.HI - Beach.HI)>-0.05)).*ProbM) - M.HI; clear NumValues ProbM

NumValues = sum(IT_CS.CS_NumM((Threshold.IT - Beach.IT)>-0.05)); ProbM = IT_CS.CS_NumM((Threshold.IT - Beach.IT)>-0.05)/NumValues;
M.IT = sum(Mu.IT((Threshold.IT - Beach.IT)>-0.05).*ProbM);
M_Lb.IT = M.IT - sum((Mu.IT((Threshold.IT - Beach.IT)>-0.05) - Mu_Lb.IT((Threshold.IT - Beach.IT)>-0.05)).*ProbM);
M_Ub.IT = sum((Mu.IT((Threshold.IT - Beach.IT)>-0.05) + Mu_Ub.IT((Threshold.IT - Beach.IT)>-0.05)).*ProbM) - M.IT; clear NumValues ProbM

NumValues = sum(AK_HS.HS_NumM((Threshold.AK - Beach.AK)>-0.05)); ProbM = AK_HS.HS_NumM((Threshold.AK - Beach.AK)>-0.05)/NumValues;
M.AK = sum(Mu.AK((Threshold.AK - Beach.AK)>-0.05).*ProbM);
M_Lb.AK = M.AK - sum((Mu.AK((Threshold.AK - Beach.AK)>-0.05) - Mu_Lb.AK((Threshold.AK - Beach.AK)>-0.05)).*ProbM);
M_Ub.AK = sum((Mu.AK((Threshold.AK - Beach.AK)>-0.05) + Mu_Ub.AK((Threshold.AK - Beach.AK)>-0.05)).*ProbM) - M.AK; clear NumValues ProbM

NumValues = sum(MA_CS.CS_NumM((Threshold.MA - Beach.MA)>-0.05)); ProbM = MA_CS.CS_NumM((Threshold.MA - Beach.MA)>-0.05)/NumValues;
M.MA = sum(Mu.MA((Threshold.MA - Beach.MA)>-0.05).*ProbM);
M_Lb.MA = M.MA - sum((Mu.MA((Threshold.MA - Beach.MA)>-0.05) - Mu_Lb.MA((Threshold.MA - Beach.MA)>-0.05)).*ProbM);
M_Ub.MA = sum((Mu.MA((Threshold.MA - Beach.MA)>-0.05) + Mu_Ub.MA((Threshold.MA - Beach.MA)>-0.05)).*ProbM) - M.MA; clear NumValues ProbM

NumValues = sum(AL_Dauphin_CS.CS_NumM((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05)); ProbM = AL_Dauphin_CS.CS_NumM((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05)/NumValues;
M.AL_Dauphin = sum(Mu.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05).*ProbM);
M_Lb.AL_Dauphin = M.AL_Dauphin - sum((Mu.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05) - Mu_Lb.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05)).*ProbM);
M_Ub.AL_Dauphin = sum((Mu.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05) + Mu_Ub.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05)).*ProbM) - M.AL_Dauphin; clear NumValues ProbM

NumValues = sum(FL_Shell_CS.CS_NumM((Threshold.FL_Shell - Beach.FL_Shell)>-0.05)); ProbM = FL_Shell_CS.CS_NumM((Threshold.FL_Shell - Beach.FL_Shell)>-0.05)/NumValues;
M.FL_Shell = sum(Mu.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05).*ProbM);
M_Lb.FL_Shell = M.FL_Shell - sum((Mu.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05) - Mu_Lb.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05)).*ProbM);
M_Ub.FL_Shell = sum((Mu.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05) + Mu_Ub.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05)).*ProbM) - M.FL_Shell; clear NumValues ProbM

% NumValues = sum(GA_LittleTybee_CS.CS_NumM((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05)); ProbM = GA_LittleTybee_CS.CS_NumM((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05)/NumValues;
% M.GA_LittleTybee = sum(Mu.GA_LittleTybee((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05).*ProbM);
% M_Lb.GA_LittleTybee = M.GA_LittleTybee - sum((Mu.GA_LittleTybee((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05) - Mu_Lb.GA_LittleTybee((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05)).*ProbM);
% M_Ub.GA_LittleTybee = sum((Mu.GA_LittleTybee((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05) + Mu_Ub.GA_LittleTybee((Threshold.GA_LittleTybee - Beach.GA_LittleTybee)>-0.05)).*ProbM) - M.GA_LittleTybee; clear NumValues ProbM

NumValues = sum(MA_Plum_CS.CS_NumM((Threshold.MA_Plum - Beach.MA_Plum)>-0.05)); ProbM = MA_Plum_CS.CS_NumM((Threshold.MA_Plum - Beach.MA_Plum)>-0.05)/NumValues;
M.MA_Plum = sum(Mu.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05).*ProbM);
M_Lb.MA_Plum = M.MA_Plum - sum((Mu.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05) - Mu_Lb.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05)).*ProbM);
M_Ub.MA_Plum = sum((Mu.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05) + Mu_Ub.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05)).*ProbM) - M.MA_Plum; clear NumValues ProbM

NumValues = sum(NC_BaldHead_CS.CS_NumM((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05)); ProbM = NC_BaldHead_CS.CS_NumM((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05)/NumValues;
M.NC_BaldHead = sum(Mu.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05).*ProbM);
M_Lb.NC_BaldHead = M.NC_BaldHead - sum((Mu.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05) - Mu_Lb.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05)).*ProbM);
M_Ub.NC_BaldHead = sum((Mu.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05) + Mu_Ub.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05)).*ProbM) - M.NC_BaldHead; clear NumValues ProbM

NumValues = sum(NC_Masonboro_CS.CS_NumM((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05)); ProbM = NC_Masonboro_CS.CS_NumM((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05)/NumValues;
M.NC_Masonboro = sum(Mu.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05).*ProbM);
M_Lb.NC_Masonboro = M.NC_Masonboro - sum((Mu.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05) - Mu_Lb.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05)).*ProbM);
M_Ub.NC_Masonboro = sum((Mu.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05) + Mu_Ub.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05)).*ProbM) - M.NC_Masonboro; clear NumValues ProbM

NumValues = sum(NC_Portsmouth_CS.CS_NumM((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05)); ProbM = NC_Portsmouth_CS.CS_NumM((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05)/NumValues;
M.NC_Portsmouth = sum(Mu.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05).*ProbM);
M_Lb.NC_Portsmouth = M.NC_Portsmouth - sum((Mu.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05) - Mu_Lb.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05)).*ProbM);
M_Ub.NC_Portsmouth = sum((Mu.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05) + Mu_Ub.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05)).*ProbM) - M.NC_Portsmouth; clear NumValues ProbM

% NumValues = sum(SC_Lighthouse_CS.CS_NumM((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05)); ProbM = SC_Lighthouse_CS.CS_NumM((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05)/NumValues;
% M.SC_Lighthouse = sum(Mu.SC_Lighthouse((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05).*ProbM);
% M_Lb.SC_Lighthouse = M.SC_Lighthouse - sum((Mu.SC_Lighthouse((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05) - Mu_Lb.SC_Lighthouse((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05)).*ProbM);
% M_Ub.SC_Lighthouse = sum((Mu.SC_Lighthouse((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05) + Mu_Ub.SC_Lighthouse((Threshold.SC_Lighthouse - Beach.SC_Lighthouse)>-0.05)).*ProbM) - M.SC_Lighthouse; clear NumValues ProbM

% NumValues = sum(SC_Pockoy_CS.CS_NumM((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05)); ProbM = SC_Pockoy_CS.CS_NumM((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05)/NumValues;
% M.SC_Pockoy = sum(Mu.SC_Pockoy((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05).*ProbM);
% M_Lb.SC_Pockoy = M.SC_Pockoy - sum((Mu.SC_Pockoy((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05) - Mu_Lb.SC_Pockoy((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05)).*ProbM);
% M_Ub.SC_Pockoy = sum((Mu.SC_Pockoy((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05) + Mu_Ub.SC_Pockoy((Threshold.SC_Pockoy - Beach.SC_Pockoy)>-0.05)).*ProbM) - M.SC_Pockoy; clear NumValues ProbM

NumValues = sum(TX_Follets_CS.CS_NumM((Threshold.TX_Follets - Beach.TX_Follets)>-0.05)); ProbM = TX_Follets_CS.CS_NumM((Threshold.TX_Follets - Beach.TX_Follets)>-0.05)/NumValues;
M.TX_Follets = sum(Mu.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05).*ProbM);
M_Lb.TX_Follets = M.TX_Follets - sum((Mu.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05) - Mu_Lb.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05)).*ProbM);
M_Ub.TX_Follets = sum((Mu.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05) + Mu_Ub.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05)).*ProbM) - M.TX_Follets; clear NumValues ProbM

NumValues = sum(TX_Hog_CS.CS_NumM((Threshold.TX_Hog - Beach.TX_Hog)>-0.05)); ProbM = TX_Hog_CS.CS_NumM((Threshold.TX_Hog - Beach.TX_Hog)>-0.05)/NumValues;
M.TX_Hog = sum(Mu.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05).*ProbM);
M_Lb.TX_Hog = M.TX_Hog - sum((Mu.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05) - Mu_Lb.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05)).*ProbM);
M_Ub.TX_Hog = sum((Mu.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05) + Mu_Ub.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05)).*ProbM) - M.TX_Hog; clear NumValues ProbM

NumValues = sum(TX_MatagordaPeninsula_CS.CS_NumM((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05)); ProbM = TX_MatagordaPeninsula_CS.CS_NumM((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05)/NumValues;
M.TX_MatagordaPeninsula = sum(Mu.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05).*ProbM);
M_Lb.TX_MatagordaPeninsula = M.TX_MatagordaPeninsula - sum((Mu.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05) - Mu_Lb.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05)).*ProbM);
M_Ub.TX_MatagordaPeninsula = sum((Mu.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05) + Mu_Ub.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05)).*ProbM) - M.TX_MatagordaPeninsula; clear NumValues ProbM

% NumValues = sum(TX_Padre_CS.CS_NumM((Threshold.TX_Padre - Beach.TX_Padre)>-0.05)); ProbM = TX_Padre_CS.CS_NumM((Threshold.TX_Padre - Beach.TX_Padre)>-0.05)/NumValues;
% M.TX_Padre = sum(Mu.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05).*ProbM);
% M_Lb.TX_Padre = M.TX_Padre - sum((Mu.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05) - Mu_Lb.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05)).*ProbM);
% M_Ub.TX_Padre = sum((Mu.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05) + Mu_Ub.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05)).*ProbM) - M.TX_Padre; clear NumValues ProbM

NumValues = sum(VA_Assateague_HS.HS_NumM((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05)); ProbM = VA_Assateague_HS.HS_NumM((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05)/NumValues;
M.VA_Assateague = sum(Mu.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05).*ProbM);
M_Lb.VA_Assateague = M.VA_Assateague - sum((Mu.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05) - Mu_Lb.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05)).*ProbM);
M_Ub.VA_Assateague = sum((Mu.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05) + Mu_Ub.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05)).*ProbM) - M.VA_Assateague; clear NumValues ProbM

% Saving the weighted average mark size for each location
save('M.mat','M')


%%% Mark at the beach elevation
M_Beach.VA = Mu.VA((Threshold.VA - Beach.VA)>-0.05 & (Threshold.VA - Beach.VA)<0.05);
M_Beach.TX_GV = Mu.TX_GV((Threshold.TX_GV - Beach.TX_GV)>-0.05 & (Threshold.TX_GV - Beach.TX_GV)<0.05);
M_Beach.TX_CC = Mu.TX_CC((Threshold.TX_CC - Beach.TX_CC)>-0.05 & (Threshold.TX_CC - Beach.TX_CC)<0.05);
M_Beach.OR_SB = Mu.OR_SB((Threshold.OR_SB - Beach.OR_SB)>-0.05 & (Threshold.OR_SB - Beach.OR_SB)<0.05);
M_Beach.CA = Mu.CA((Threshold.CA - Beach.CA)>-0.05 & (Threshold.CA - Beach.CA)<0.05);
M_Beach.FL = Mu.FL((Threshold.FL - Beach.FL)>-0.05 & (Threshold.FL - Beach.FL)<0.05);
M_Beach.FL_SP = Mu.FL_SP((Threshold.FL_SP - Beach.FL_SP)>-0.05 & (Threshold.FL_SP - Beach.FL_SP)<0.05);
M_Beach.AUS_NSW = Mu.AUS_NSW((Threshold.AUS_NSW - Beach.AUS_NSW)>-0.05 & (Threshold.AUS_NSW - Beach.AUS_NSW)<0.05);
M_Beach.HI = Mu.HI((Threshold.HI - Beach.HI)>-0.05 & (Threshold.HI - Beach.HI)<0.05);
M_Beach.IT = Mu.IT((Threshold.IT - Beach.IT)>-0.05 & (Threshold.IT - Beach.IT)<0.05);
M_Beach.AK = Mu.AK((Threshold.AK - Beach.AK)>-0.05 & (Threshold.AK - Beach.AK)<0.05);
M_Beach.MA = Mu.MA((Threshold.MA - Beach.MA)>-0.05 & (Threshold.MA - Beach.MA)<0.05);
M_Beach.AL_Dauphin = Mu.AL_Dauphin((Threshold.AL_Dauphin - Beach.AL_Dauphin)>-0.05 & (Threshold.AL_Dauphin - Beach.AL_Dauphin)<0.05);
M_Beach.FL_Shell = Mu.FL_Shell((Threshold.FL_Shell - Beach.FL_Shell)>-0.05 & (Threshold.FL_Shell - Beach.FL_Shell)<0.05);
M_Beach.MA_Plum = Mu.MA_Plum((Threshold.MA_Plum - Beach.MA_Plum)>-0.05 & (Threshold.MA_Plum - Beach.MA_Plum)<0.05);
M_Beach.NC_BaldHead = Mu.NC_BaldHead((Threshold.NC_BaldHead - Beach.NC_BaldHead)>-0.05 & (Threshold.NC_BaldHead - Beach.NC_BaldHead)<0.05);
M_Beach.NC_Masonboro = Mu.NC_Masonboro((Threshold.NC_Masonboro - Beach.NC_Masonboro)>-0.05 & (Threshold.NC_Masonboro - Beach.NC_Masonboro)<0.05);
M_Beach.NC_Portsmouth = Mu.NC_Portsmouth((Threshold.NC_Portsmouth - Beach.NC_Portsmouth)>-0.05 & (Threshold.NC_Portsmouth - Beach.NC_Portsmouth)<0.05);
M_Beach.TX_Follets = Mu.TX_Follets((Threshold.TX_Follets - Beach.TX_Follets)>-0.05 & (Threshold.TX_Follets - Beach.TX_Follets)<0.05);
M_Beach.TX_Hog = Mu.TX_Hog((Threshold.TX_Hog - Beach.TX_Hog)>-0.05 & (Threshold.TX_Hog - Beach.TX_Hog)<0.05);
M_Beach.TX_MatagordaPeninsula = Mu.TX_MatagordaPeninsula((Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)>-0.05 & (Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula)<0.05);
% M_Beach.TX_Padre = Mu.TX_Padre((Threshold.TX_Padre - Beach.TX_Padre)>-0.05 & (Threshold.TX_Padre - Beach.TX_Padre)<0.05);
M_Beach.VA_Assateague = Mu.VA_Assateague((Threshold.VA_Assateague - Beach.VA_Assateague)>-0.05 & (Threshold.VA_Assateague - Beach.VA_Assateague)<0.05);

% Saving the mark size at the beach for each location
save('M_Beach.mat','M_Beach')


%%% Average Significant wave height %%%
% New Results
SWH.AL_Dauphin = mean(rmmissing(AL_Dauphin_CS.DailySWH));
SWH.FL_Shell = mean(rmmissing(FL_Shell_CS.DailySWH));
% SWH.GA_LittleTybee = mean(rmmissing(GA_LittleTybee_CS.DailySWH));
SWH.MA_Plum = mean(rmmissing(MA_Plum_CS.DailySWH));
SWH.NC_BaldHead = mean(rmmissing(NC_BaldHead_CS.DailySWH));
SWH.NC_Masonboro = mean(rmmissing(NC_Masonboro_CS.DailySWH));
SWH.NC_Portsmouth = mean(rmmissing(NC_Portsmouth_CS.DailySWH));
% SWH.SC_Lighthouse = mean(rmmissing(SC_Lighthouse_CS.DailySWH));
% SWH.SC_Pockoy = mean(rmmissing(SC_Pockoy_CS.DailySWH));
SWH.TX_Follets = mean(rmmissing(TX_Follets_CS.DailySWH));
SWH.TX_Hog = mean(rmmissing(TX_Hog_CS.DailySWH));
SWH.TX_MatagordaPeninsula = mean(rmmissing(TX_MatagordaPeninsula_CS.DailySWH));
% SWH.TX_Padre = mean(rmmissing(TX_Padre_CS.DailySWH));
SWH.VA_Assateague = mean(rmmissing(VA_Assateague_HS.DailySWH));
% Former Results
SWH.VA = mean(rmmissing(VA_HS.DailySWH));
SWH.TX_GV = mean(rmmissing(TX_GV_CS.DailySWH));
SWH.TX_CC = mean(rmmissing(TX_CC_CS.DailySWH));
SWH.OR_SB = mean(rmmissing(OR_SB_HS.DailySWH));
SWH.CA = mean(rmmissing(CA_HS.DailySWH));
SWH.FL = mean(rmmissing(FL_CS.DailySWH));
SWH.FL_SP = mean(rmmissing(FL_SP_CS.DailySWH));
SWH.AUS_NSW = mean(rmmissing(AUS_NSW_CS.DailySWH));
SWH.HI = mean(rmmissing(HI_CS.DailySWH));
SWH.IT = mean(rmmissing(IT_CS.DailySWH));
SWH.AK = mean(rmmissing(AK_HS.DailySWH));
SWH.MA = mean(rmmissing(MA_CS.DailySWH));

%%% Standard deviation of Significant wave height %%%
% New Results
SWHsd.AL_Dauphin = std(rmmissing(AL_Dauphin_CS.DailySWH));
SWHsd.FL_Shell = std(rmmissing(FL_Shell_CS.DailySWH));
% SWHsd.GA_LittleTybee = std(rmmissing(GA_LittleTybee_CS.DailySWH));
SWHsd.MA_Plum = std(rmmissing(MA_Plum_CS.DailySWH));
SWHsd.NC_BaldHead = std(rmmissing(NC_BaldHead_CS.DailySWH));
SWHsd.NC_Masonboro = std(rmmissing(NC_Masonboro_CS.DailySWH));
SWHsd.NC_Portsmouth = std(rmmissing(NC_Portsmouth_CS.DailySWH));
% SWHsd.SC_Lighthouse = std(rmmissing(SC_Lighthouse_CS.DailySWH));
% SWHsd.SC_Pockoy = std(rmmissing(SC_Pockoy_CS.DailySWH));
SWHsd.TX_Follets = std(rmmissing(TX_Follets_CS.DailySWH));
SWHsd.TX_Hog = std(rmmissing(TX_Hog_CS.DailySWH));
SWHsd.TX_MatagordaPeninsula = std(rmmissing(TX_MatagordaPeninsula_CS.DailySWH));
% SWHsd.TX_Padre = std(rmmissing(TX_Padre_CS.DailySWH));
SWHsd.VA_Assateague = std(rmmissing(VA_Assateague_HS.DailySWH));
% Former Results
SWHsd.VA = std(rmmissing(VA_HS.DailySWH));
SWHsd.TX_GV = std(rmmissing(TX_GV_CS.DailySWH));
SWHsd.TX_CC = std(rmmissing(TX_CC_CS.DailySWH));
SWHsd.OR_SB = std(rmmissing(OR_SB_HS.DailySWH));
SWHsd.CA = std(rmmissing(CA_HS.DailySWH));
SWHsd.FL = std(rmmissing(FL_CS.DailySWH));
SWHsd.FL_SP = std(rmmissing(FL_SP_CS.DailySWH));
SWHsd.AUS_NSW = std(rmmissing(AUS_NSW_CS.DailySWH));
SWHsd.HI = std(rmmissing(HI_CS.DailySWH));
SWHsd.IT = std(rmmissing(IT_CS.DailySWH));
SWHsd.AK = std(rmmissing(AK_HS.DailySWH));
SWHsd.MA = std(rmmissing(MA_CS.DailySWH));

%%% Average deep wavelength %%%
% New Results
DWL.AL_Dauphin = (9.80665/(2*pi))*mean(rmmissing(AL_Dauphin_CS.DailyPP.^2));
DWL.FL_Shell = (9.80665/(2*pi))*mean(rmmissing(FL_Shell_CS.DailyPP.^2));
% DWL.GA_LittleTybee = (9.80665/(2*pi))*mean(rmmissing(GA_LittleTybee_CS.DailyPP.^2));
DWL.MA_Plum = (9.80665/(2*pi))*mean(rmmissing(MA_Plum_CS.DailyPP.^2));
DWL.NC_BaldHead = (9.80665/(2*pi))*mean(rmmissing(NC_BaldHead_CS.DailyPP.^2));
DWL.NC_Masonboro = (9.80665/(2*pi))*mean(rmmissing(NC_Masonboro_CS.DailyPP.^2));
DWL.NC_Portsmouth = (9.80665/(2*pi))*mean(rmmissing(NC_Portsmouth_CS.DailyPP.^2));
% DWL.SC_Lighthouse = (9.80665/(2*pi))*mean(rmmissing(SC_Lighthouse_CS.DailyPP.^2));
% DWL.SC_Pockoy = (9.80665/(2*pi))*mean(rmmissing(SC_Pockoy_CS.DailyPP.^2));
DWL.TX_Follets = (9.80665/(2*pi))*mean(rmmissing(TX_Follets_CS.DailyPP.^2));
DWL.TX_Hog = (9.80665/(2*pi))*mean(rmmissing(TX_Hog_CS.DailyPP.^2));
DWL.TX_MatagordaPeninsula = (9.80665/(2*pi))*mean(rmmissing(TX_MatagordaPeninsula_CS.DailyPP.^2));
% DWL.TX_Padre = (9.80665/(2*pi))*mean(rmmissing(TX_Padre_CS.DailyPP.^2));
DWL.VA_Assateague = (9.80665/(2*pi))*mean(rmmissing(VA_Assateague_HS.DailyPP.^2));
% Former Results
DWL.VA = (9.80665/(2*pi))*mean(rmmissing(VA_HS.DailyPP.^2));
DWL.TX_GV = (9.80665/(2*pi))*mean(rmmissing(TX_GV_CS.DailyPP.^2));
DWL.TX_CC = (9.80665/(2*pi))*mean(rmmissing(TX_CC_CS.DailyPP.^2));
DWL.OR_SB = (9.80665/(2*pi))*mean(rmmissing(OR_SB_HS.DailyPP.^2));
DWL.CA = (9.80665/(2*pi))*mean(rmmissing(CA_HS.DailyPP.^2));
DWL.FL = (9.80665/(2*pi))*mean(rmmissing(FL_CS.DailyPP.^2));
DWL.FL_SP = (9.80665/(2*pi))*mean(rmmissing(FL_SP_CS.DailyPP.^2));
DWL.AUS_NSW = (9.80665/(2*pi))*mean(rmmissing(AUS_NSW_CS.DailyPP.^2));
DWL.HI = (9.80665/(2*pi))*mean(rmmissing(HI_CS.DailyPP.^2));
DWL.IT = (9.80665/(2*pi))*mean(rmmissing(IT_CS.DailyPP.^2));
DWL.AK = (9.80665/(2*pi))*mean(rmmissing(AK_HS.DailyPP.^2));
DWL.MA = (9.80665/(2*pi))*mean(rmmissing(MA_CS.DailyPP.^2));

%%% Standard deviation deep wavelength %%%
% New Results
DWLsd.AL_Dauphin = (9.80665/(2*pi))*std(rmmissing(AL_Dauphin_CS.DailyPP.^2));
DWLsd.FL_Shell = (9.80665/(2*pi))*std(rmmissing(FL_Shell_CS.DailyPP.^2));
% DWLsd.GA_LittleTybee = (9.80665/(2*pi))*std(rmmissing(GA_LittleTybee_CS.DailyPP.^2));
DWLsd.MA_Plum = (9.80665/(2*pi))*std(rmmissing(MA_Plum_CS.DailyPP.^2));
DWLsd.NC_BaldHead = (9.80665/(2*pi))*std(rmmissing(NC_BaldHead_CS.DailyPP.^2));
DWLsd.NC_Masonboro = (9.80665/(2*pi))*std(rmmissing(NC_Masonboro_CS.DailyPP.^2));
DWLsd.NC_Portsmouth = (9.80665/(2*pi))*std(rmmissing(NC_Portsmouth_CS.DailyPP.^2));
% DWLsd.SC_Lighthouse = (9.80665/(2*pi))*std(rmmissing(SC_Lighthouse_CS.DailyPP.^2));
% DWLsd.SC_Pockoy = (9.80665/(2*pi))*std(rmmissing(SC_Pockoy_CS.DailyPP.^2));
DWLsd.TX_Follets = (9.80665/(2*pi))*std(rmmissing(TX_Follets_CS.DailyPP.^2));
DWLsd.TX_Hog = (9.80665/(2*pi))*std(rmmissing(TX_Hog_CS.DailyPP.^2));
DWLsd.TX_MatagordaPeninsula = (9.80665/(2*pi))*std(rmmissing(TX_MatagordaPeninsula_CS.DailyPP.^2));
% DWLsd.TX_Padre = (9.80665/(2*pi))*std(rmmissing(TX_Padre_CS.DailyPP.^2));
DWLsd.VA_Assateague = (9.80665/(2*pi))*std(rmmissing(VA_Assateague_HS.DailyPP.^2));
% Former Results
DWLsd.VA = (9.80665/(2*pi))*std(rmmissing(VA_HS.DailyPP.^2));
DWLsd.TX_GV = (9.80665/(2*pi))*std(rmmissing(TX_GV_CS.DailyPP.^2));
DWLsd.TX_CC = (9.80665/(2*pi))*std(rmmissing(TX_CC_CS.DailyPP.^2));
DWLsd.OR_SB = (9.80665/(2*pi))*std(rmmissing(OR_SB_HS.DailyPP.^2));
DWLsd.CA = (9.80665/(2*pi))*std(rmmissing(CA_HS.DailyPP.^2));
DWLsd.FL = (9.80665/(2*pi))*std(rmmissing(FL_CS.DailyPP.^2));
DWLsd.FL_SP = (9.80665/(2*pi))*std(rmmissing(FL_SP_CS.DailyPP.^2));
DWLsd.AUS_NSW = (9.80665/(2*pi))*std(rmmissing(AUS_NSW_CS.DailyPP.^2));
DWLsd.HI = (9.80665/(2*pi))*std(rmmissing(HI_CS.DailyPP.^2));
DWLsd.IT = (9.80665/(2*pi))*std(rmmissing(IT_CS.DailyPP.^2));
DWLsd.AK = (9.80665/(2*pi))*std(rmmissing(AK_HS.DailyPP.^2));
DWLsd.MA = (9.80665/(2*pi))*std(rmmissing(MA_CS.DailyPP.^2));


%%% Wave characteristics --> Hs = Significant Wave Height %%%
% New Results
Hs.AL_Dauphin = mean(rmmissing(AL_Dauphin_CS.SignificantWaveHeightWithGaps));
Hs.FL_Shell = mean(rmmissing(FL_Shell_CS.SignificantWaveHeightWithGaps));
% Hs.GA_LittleTybee = mean(rmmissing(GA_LittleTybee_CS.SignificantWaveHeightWithGaps));
Hs.MA_Plum = mean(rmmissing(MA_Plum_CS.SignificantWaveHeightWithGaps));
Hs.NC_BaldHead = mean(rmmissing(NC_BaldHead_CS.SignificantWaveHeightWithGaps));
Hs.NC_Masonboro = mean(rmmissing(NC_Masonboro_CS.SignificantWaveHeightWithGaps));
Hs.NC_Portsmouth = mean(rmmissing(NC_Portsmouth_CS.SignificantWaveHeightWithGaps));
% Hs.SC_Lighthouse = mean(rmmissing(SC_Lighthouse_CS.SignificantWaveHeightWithGaps));
% Hs.SC_Pockoy = mean(rmmissing(SC_Pockoy_CS.SignificantWaveHeightWithGaps));
Hs.TX_Follets = mean(rmmissing(TX_Follets_CS.SignificantWaveHeightWithGaps));
Hs.TX_Hog = mean(rmmissing(TX_Hog_CS.SignificantWaveHeightWithGaps));
Hs.TX_MatagordaPeninsula = mean(rmmissing(TX_MatagordaPeninsula_CS.SignificantWaveHeightWithGaps));
% Hs.TX_Padre = mean(rmmissing(TX_Padre_CS.SignificantWaveHeightWithGaps));
Hs.VA_Assateague = mean(rmmissing(VA_Assateague_HS.SignificantWaveHeightWithGaps));
% Former Results
Hs.VA = mean(rmmissing(VA_HS.SignificantWaveHeightWithGaps));
Hs.TX_GV = mean(rmmissing(TX_GV_CS.SignificantWaveHeightWithGaps));
Hs.TX_CC = mean(rmmissing(TX_CC_CS.SignificantWaveHeightWithGaps));
Hs.OR_SB = mean(rmmissing(OR_SB_HS.SignificantWaveHeightWithGaps));
Hs.CA = mean(rmmissing(CA_HS.SignificantWaveHeightWithGaps));
Hs.FL = mean(rmmissing(FL_CS.SignificantWaveHeightWithGaps));
Hs.FL_SP = mean(rmmissing(FL_SP_CS.SignificantWaveHeightWithGaps));
Hs.AUS_NSW = mean(rmmissing(AUS_NSW_CS.SignificantWaveHeightWithGaps));
Hs.HI = mean(rmmissing(HI_CS.SignificantWaveHeightWithGaps));
Hs.IT = mean(rmmissing(IT_CS.SignificantWaveHeightWithGaps));
Hs.AK = mean(rmmissing(AK_HS.SignificantWaveHeightWithGaps));
Hs.MA = mean(rmmissing(MA_CS.SignificantWaveHeightWithGaps));

%%% Wave characteristics --> Lo = Wave Length %%%
% New Results
Lo.AL_Dauphin = mean(1.56.*rmmissing(AL_Dauphin_CS.PeakPeriodWithGaps).^2);
Lo.FL_Shell = mean(1.56.*rmmissing(FL_Shell_CS.PeakPeriodWithGaps).^2);
% Lo.GA_LittleTybee = mean(1.56.*rmmissing(GA_LittleTybee_CS.PeakPeriodWithGaps).^2);
Lo.MA_Plum = mean(1.56.*rmmissing(MA_Plum_CS.PeakPeriodWithGaps).^2);
Lo.NC_BaldHead = mean(1.56.*rmmissing(NC_BaldHead_CS.PeakPeriodWithGaps).^2);
Lo.NC_Masonboro = mean(1.56.*rmmissing(NC_Masonboro_CS.PeakPeriodWithGaps).^2);
Lo.NC_Portsmouth = mean(1.56.*rmmissing(NC_Portsmouth_CS.PeakPeriodWithGaps).^2);
% Lo.SC_Lighthouse = mean(1.56.*rmmissing(SC_Lighthouse_CS.PeakPeriodWithGaps).^2);
% Lo.SC_Pockoy = mean(1.56.*rmmissing(SC_Pockoy_CS.PeakPeriodWithGaps).^2);
Lo.TX_Follets = mean(1.56.*rmmissing(TX_Follets_CS.PeakPeriodWithGaps).^2);
Lo.TX_Hog = mean(1.56.*rmmissing(TX_Hog_CS.PeakPeriodWithGaps).^2);
Lo.TX_MatagordaPeninsula = mean(1.56.*rmmissing(TX_MatagordaPeninsula_CS.PeakPeriodWithGaps).^2);
% Lo.TX_Padre = mean(1.56.*rmmissing(TX_Padre_CS.PeakPeriodWithGaps).^2);
Lo.VA_Assateague = mean(1.56.*rmmissing(VA_Assateague_HS.PeakPeriodWithGaps).^2);
% Former Results
Lo.VA = mean(1.56.*rmmissing(VA_HS.PeakPeriodWithGaps).^2);
Lo.TX_GV = mean(1.56.*rmmissing(TX_GV_CS.PeakPeriodWithGaps).^2);
Lo.TX_CC = mean(1.56.*rmmissing(TX_CC_CS.PeakPeriodWithGaps).^2);
Lo.OR_SB = mean(1.56.*rmmissing(OR_SB_HS.PeakPeriodWithGaps).^2);
Lo.CA = mean(1.56.*rmmissing(CA_HS.PeakPeriodWithGaps).^2);
Lo.FL = mean(1.56.*rmmissing(FL_CS.PeakPeriodWithGaps).^2);
Lo.FL_SP = mean(1.56.*rmmissing(FL_SP_CS.PeakPeriodWithGaps).^2);
Lo.AUS_NSW = mean(1.56.*rmmissing(AUS_NSW_CS.PeakPeriodWithGaps).^2);
Lo.HI = mean(1.56.*rmmissing(HI_CS.PeakPeriodWithGaps).^2);
Lo.IT = mean(1.56.*rmmissing(IT_CS.PeakPeriodWithGaps).^2);
Lo.AK = mean(1.56.*rmmissing(AK_HS.PeakPeriodWithGaps).^2);
Lo.MA = mean(1.56.*rmmissing(MA_CS.PeakPeriodWithGaps).^2);

%%% Wave characteristics --> HsSD = std of Hs %%%
% New Results
HsSD.AL_Dauphin = std(rmmissing(AL_Dauphin_CS.SignificantWaveHeightWithGaps));
HsSD.FL_Shell = std(rmmissing(FL_Shell_CS.SignificantWaveHeightWithGaps));
% HsSD.GA_LittleTybee = std(rmmissing(GA_LittleTybee_CS.SignificantWaveHeightWithGaps));
HsSD.MA_Plum = std(rmmissing(MA_Plum_CS.SignificantWaveHeightWithGaps));
HsSD.NC_BaldHead = std(rmmissing(NC_BaldHead_CS.SignificantWaveHeightWithGaps));
HsSD.NC_Masonboro = std(rmmissing(NC_Masonboro_CS.SignificantWaveHeightWithGaps));
HsSD.NC_Portsmouth = std(rmmissing(NC_Portsmouth_CS.SignificantWaveHeightWithGaps));
% HsSD.SC_Lighthouse = std(rmmissing(SC_Lighthouse_CS.SignificantWaveHeightWithGaps));
% HsSD.SC_Pockoy = std(rmmissing(SC_Pockoy_CS.SignificantWaveHeightWithGaps));
HsSD.TX_Follets = std(rmmissing(TX_Follets_CS.SignificantWaveHeightWithGaps));
HsSD.TX_Hog = std(rmmissing(TX_Hog_CS.SignificantWaveHeightWithGaps));
HsSD.TX_MatagordaPeninsula = std(rmmissing(TX_MatagordaPeninsula_CS.SignificantWaveHeightWithGaps));
% HsSD.TX_Padre = std(rmmissing(TX_Padre_CS.SignificantWaveHeightWithGaps));
HsSD.VA_Assateague = std(rmmissing(VA_Assateague_HS.SignificantWaveHeightWithGaps));
% Former Results
HsSD.VA = std(rmmissing(VA_HS.SignificantWaveHeightWithGaps));
HsSD.TX_GV = std(rmmissing(TX_GV_CS.SignificantWaveHeightWithGaps));
HsSD.TX_CC = std(rmmissing(TX_CC_CS.SignificantWaveHeightWithGaps));
HsSD.OR_SB = std(rmmissing(OR_SB_HS.SignificantWaveHeightWithGaps));
HsSD.CA = std(rmmissing(CA_HS.SignificantWaveHeightWithGaps));
HsSD.FL = std(rmmissing(FL_CS.SignificantWaveHeightWithGaps));
HsSD.FL_SP = std(rmmissing(FL_SP_CS.SignificantWaveHeightWithGaps));
HsSD.AUS_NSW = std(rmmissing(AUS_NSW_CS.SignificantWaveHeightWithGaps));
HsSD.HI = std(rmmissing(HI_CS.SignificantWaveHeightWithGaps));
HsSD.IT = std(rmmissing(IT_CS.SignificantWaveHeightWithGaps));
HsSD.AK = std(rmmissing(AK_HS.SignificantWaveHeightWithGaps));
HsSD.MA = std(rmmissing(MA_CS.SignificantWaveHeightWithGaps));

%%% Wave characteristics --> LoSD = std of Lo %%%
% New Results
LoSD.AL_Dauphin = std(1.56.*rmmissing(AL_Dauphin_CS.PeakPeriodWithGaps).^2);
LoSD.FL_Shell = std(1.56.*rmmissing(FL_Shell_CS.PeakPeriodWithGaps).^2);
% LoSD.GA_LittleTybee = std(1.56.*rmmissing(GA_LittleTybee_CS.PeakPeriodWithGaps).^2);
LoSD.MA_Plum = std(1.56.*rmmissing(MA_Plum_CS.PeakPeriodWithGaps).^2);
LoSD.NC_BaldHead = std(1.56.*rmmissing(NC_BaldHead_CS.PeakPeriodWithGaps).^2);
LoSD.NC_Masonboro = std(1.56.*rmmissing(NC_Masonboro_CS.PeakPeriodWithGaps).^2);
LoSD.NC_Portsmouth = std(1.56.*rmmissing(NC_Portsmouth_CS.PeakPeriodWithGaps).^2);
% LoSD.SC_Lighthouse = std(1.56.*rmmissing(SC_Lighthouse_CS.PeakPeriodWithGaps).^2);
% LoSD.SC_Pockoy = std(1.56.*rmmissing(SC_Pockoy_CS.PeakPeriodWithGaps).^2);
LoSD.TX_Follets = std(1.56.*rmmissing(TX_Follets_CS.PeakPeriodWithGaps).^2);
LoSD.TX_Hog = std(1.56.*rmmissing(TX_Hog_CS.PeakPeriodWithGaps).^2);
LoSD.TX_MatagordaPeninsula = std(1.56.*rmmissing(TX_MatagordaPeninsula_CS.PeakPeriodWithGaps).^2);
% LoSD.TX_Padre = std(1.56.*rmmissing(TX_Padre_CS.PeakPeriodWithGaps).^2);
LoSD.VA_Assateague = std(1.56.*rmmissing(VA_Assateague_HS.PeakPeriodWithGaps).^2);
% Former Results
LoSD.VA = std(1.56.*rmmissing(VA_HS.PeakPeriodWithGaps).^2);
LoSD.TX_GV = std(1.56.*rmmissing(TX_GV_CS.PeakPeriodWithGaps).^2);
LoSD.TX_CC = std(1.56.*rmmissing(TX_CC_CS.PeakPeriodWithGaps).^2);
LoSD.OR_SB = std(1.56.*rmmissing(OR_SB_HS.PeakPeriodWithGaps).^2);
LoSD.CA = std(1.56.*rmmissing(CA_HS.PeakPeriodWithGaps).^2);
LoSD.FL = std(1.56.*rmmissing(FL_CS.PeakPeriodWithGaps).^2);
LoSD.FL_SP = std(1.56.*rmmissing(FL_SP_CS.PeakPeriodWithGaps).^2);
LoSD.AUS_NSW = std(1.56.*rmmissing(AUS_NSW_CS.PeakPeriodWithGaps).^2);
LoSD.HI = std(1.56.*rmmissing(HI_CS.PeakPeriodWithGaps).^2);
LoSD.IT = std(1.56.*rmmissing(IT_CS.PeakPeriodWithGaps).^2);
LoSD.AK = std(1.56.*rmmissing(AK_HS.PeakPeriodWithGaps).^2);
LoSD.MA = std(1.56.*rmmissing(MA_CS.PeakPeriodWithGaps).^2);

%%% Calculating TA %%%
% New Results
TA.AL_Dauphin = f_TADef(AL_Dauphin_CS,1,1);
TA.FL_Shell = f_TADef(FL_Shell_CS,1,1);
% TA.GA_LittleTybee = f_TADef(GA_LittleTybee_CS,1,1);
TA.MA_Plum = f_TADef(MA_Plum_CS,1,1);
TA.NC_BaldHead = f_TADef(NC_BaldHead_CS,1,1);
TA.NC_Masonboro = f_TADef(NC_Masonboro_CS,1,1);
TA.NC_Portsmouth = f_TADef(NC_Portsmouth_CS,1,1);
% TA.SC_Lighthouse = f_TADef(SC_Lighthouse_CS,1,1);
% TA.SC_Pockoy = f_TADef(SC_Pockoy_CS,1,1);
TA.TX_Follets = f_TADef(TX_Follets_CS,1,1);
TA.TX_Hog = f_TADef(TX_Hog_CS,1,1);
TA.TX_MatagordaPeninsula = f_TADef(TX_MatagordaPeninsula_CS,1,1);
% TA.TX_Padre = f_TADef(TX_Padre_CS,1,1);
TA.VA_Assateague = f_TADef(VA_Assateague_HS,1,1);
% Former Results
TA.VA = f_TADef(VA_HS,1,1);
TA.TX_GV = f_TADef(TX_GV_CS,1,1);
TA.TX_CC = f_TADef(TX_CC_CS,1,1);
TA.OR_SB = f_TADef(OR_SB_HS,1,1);
TA.CA = f_TADef(CA_HS,1,1);
TA.FL = f_TADef(FL_CS,1,1);
TA.FL_SP = f_TADef(FL_SP_CS,1,1);
TA.AUS_NSW = f_TADef(AUS_NSW_CS,1,1);
TA.HI = f_TADef(HI_CS,1,1);
TA.IT = f_TADef(IT_CS,1,1);
TA.AK = f_TADef(AK_HS,1,1);
TA.MA = f_TADef(MA_CS,1,1);


%% TO BE UPDATED

% % % Virginia --> Tide Station ID: 8631044
% % % Texas Galveston --> Tide Station ID: 8771450
% % % Texas Corpus Christi --> Tide Station ID: 8775870
% % % Oregon South Beach --> Tide Station ID: 9435380 
% % % California --> Tide Station ID: 9413450
% % % Florida --> Tide Station ID: 8721604
% % % Florida StPetersburg --> Tide Station ID: 8726384
% % % Australia New South Wales --> Tide Station ID:
% % % Australia Queensland --> Tide Station ID:
% % % Hawaii --> Tide Station ID: 1612480
% % % Italy --> Tide Station ID:
% % % Alaska --> Tide Station ID: 9452634
% % % Massachussets --> Tide Station ID: 8443970
% 
% %%% Mean Tidal Amplitude Values (NDBC for US, Coastal Data System for
% %%% AUS_QLD)
% % TA_VA = 0.6126; 
% % TA_TX_GV = 0.155448; (Value to check where it comes from 0.1478 NDBC?? dont think so)
% % TA_TX_CC = 0.199644;
% % TA_OR_SB = 0.955;
% % TA_CA = 0.5395;
% % TA_FL = 0.5182;
% % TA_FL_SP = 0.235;
% % TA_AUS_NSW = ;
% % TA_AUS_QLD = 1.7; (not too reliable)
% % TA_HI = 0.2271;
% % TA_IT = ;
% % TA_AK = 1.3213;
% % TA_MA = 1.4463;
% 
% %%% Tidal Amplitude from Univariate Spectral Analysis (using Verified Tide)
% % TA_VA = 0.5331;
% % TA_TX_GV = 0.1319;
% % TA_TX_CC = 0.1274;
% % TA_OR_SB = 0.7108;
% % TA_CA = 0.5063;
% % TA_FL = 0.3271;
% % TA_FL_SP = 0.2132;
% % TA_AUS_NSW = 0.349;
% % TA_AUS_QLD = 0.3449;
% % TA_HI = 0.1619;
% % TA_IT = 0.2605;
% % TA_AK = 1.252;
% % TA_MA = 0.9583;
% 
% %%% Tidal Amplitude from Univariate Spectral Analysis (using Predicted Tide)
% % TA_VA = 0.5396;
% % TA_TX_GV = 0.1384;
% % TA_TX_CC = 0.1354;
% % TA_OR_SB = 0.7114;
% % TA_CA = 0.5057;
% % TA_FL = 0.3344;
% % TA_FL_SP = 0.2206;
% % TA_AUS_NSW = 0.4351;
% % TA_AUS_QLD = 0.4355;
% % TA_HI = 0.1640;
% % TA_IT = 0.2008;
% % TA_AK = 1.2563;
% % TA_MA = 0.9634;
% 
% 
% 
% %%% Tidal amplitude from mean(peaks)-mean(valleys) (using Verified Tide)
% VerTA_VA = 0.7922;
% VerTA_TX_GV = 0.3544;
% VerTA_TX_CC = 0.3216;
% VerTA_OR_SB = 1.3463;
% VerTA_CA = 0.8435;
% VerTA_FL = 0.6667;
% VerTA_FL_SP = 0.502;
% VerTA_AUS_NSW = 0.6871;
% VerTA_AUS_QLD = 0.9780;
% VerTA_HI = 0.3427;
% VerTA_IT = 0.5029;
% VerTA_AK = 1.7643;
% VerTA_MA = 1.6347;
% 
% %%% Tidal amplitude from mean(peaks) - mean(valleys) (using Predicted Tide)
% TA_VA = 0.6587;
% TA_TX_GV = 0.2437;
% TA_TX_CC = 0.2582;
% TA_OR_SB = 1.2954;
% TA_CA = 0.8215;
% TA_FL = 0.6164;
% TA_FL_SP = 0.437;
% TA_AUS_NSW = 0.6600;
% % TA_AUS_QLD = 0.9569;
% TA_HI = 0.3334;
% TA_IT = 0.4323;             
% TA_AK = 1.7198;
% TA_MA = 1.5634;
% 
% 
% % % % % % %%% Position of positive tests for inter-arrivals
% % % % % % PosIA_VA = 8:13;
% % % % % % PosIA_TX = 6:13;
% % % % % % PosIA_TX_CC = 7:12;
% % % % % % PosIA_OR_SB = 1:21;
% % % % % % PosIA_CA = 3:13;
% % % % % % PosIA_FL = 1:11;
% % % % % % PosIA_FL_SP = 1:10;
% % % % % % PosIA_AUS_NSW = 4:12;
% % % % % % PosIA_AUS_QLD = NaN;
% % % % % % PosIA_HI = 1:16;
% % % % % % PosIA_IT = 1:10;
% % % % % % PosIA_AK = 1:24;
% % % % % % PosIA_MA = 1:17;
% % % % % % 
% % % % % % %%% Position of positive tests for marks
% % % % % % PosM_VA = 4:13;
% % % % % % PosM_TX_GV = 4:13;
% % % % % % PosM_TX_CC = 6:12;
% % % % % % PosM_OR_SB = 10:21;
% % % % % % PosM_CA = 2:13;
% % % % % % PosM_FL = 1:11;
% % % % % % PosM_FL_SP = 1:10;
% % % % % % PosM_AUS_NSW = 5:12;
% % % % % % PosM_AUS_QLD = 1:11;
% % % % % % PosM_HI = 1:16;
% % % % % % PosM_IT = 3:10;
% % % % % % PosM_AK = 13:24;
% % % % % % PosM_MA = 6:17;
% 
% %%% Position of positive tests for both inter-arrivals and marks combined
% PosVA = 8:13;       RightTailVA = NaN;           % 4 = peak
% PosTX_GV = 6:13;     RightTailTX_GV = NaN;       % 3 = peak
% PosTX_CC = 7:12;     RightTailTX_CC = NaN;       % 3 = peak
% PosOR_SB = 10:21;    RightTailOR_SB = NaN;       % 8 = peak
% PosCA = 5:13;       RightTailCA = NaN;           % 6 = peak
% PosFL = 3:11;        RightTailFL = NaN;          % 2 = peak
% PosFL_SP = 3:10;     RightTailFL_SP = NaN;       % 2 = peak
% PosAUS_NSW = 5:12;  RightTailAUS_NSW = NaN;      % 3 = peak
% % PosAUS_QLD = 11;   RightTailAUS_QLD = NaN;     % 7 = peak  
% PosHI = 3:16;        RightTailHI = NaN;          % 9 = peak  
% PosIT = 3:10;        RightTailIT = NaN;          % 3 = peak
% PosAK = 13:24;      RightTailAK = NaN;           % 15 = peak
% PosMA = 6:17;       RightTailMA = NaN;           % 5 = peak 
% 
% % No. of inter-arrival data associated to each threshold
% 
% NumdataVA = rmmissing(VA_HS.HS_NumIA);
% NumdataTX_GV = rmmissing(TX_GV_CS.CS_NumIA);
% NumdataTX_CC = rmmissing(TX_CC_CS.CS_NumIA);
% NumdataOR_SB = rmmissing(OR_SB_HS.HS_NumIA);
% NumdataCA = rmmissing(CA_HS.HS_NumIA);
% NumdataFL = rmmissing(FL_CS.CS_NumIA);
% NumdataFL_SP = rmmissing(FL_SP_CS.CS_NumIA);
% NumdataAUS_NSW = rmmissing(AUS_NSW_CS.CS_NumIA);
% % NumdataAUS_QLD = rmmissing(AUS_QLD_HS.HS_NumIA);
% NumdataHI = rmmissing(HI_CS.CS_NumIA);
% NumdataIT = rmmissing(IT_CS.CS_NumIA);
% NumdataAK = rmmissing(AK_HS.HS_NumIA); 
% NumdataMA = rmmissing(MA_CS.CS_NumIA);

