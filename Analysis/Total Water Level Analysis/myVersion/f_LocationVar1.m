


%%


Names.TX_CedarLakes = 'TX - CedarLakes';
Colors.TX_CedarLakes = [0.4940, 0.1840, 0.5560];
MSLToNAVD88.TX_CedarLakes = [];
Slopes.TX_CedarLakes = rmmissing(TX_CedarLakes.Slope);
Ref.TX_CedarLakes = rmmissing(TX_CedarLakes.Reference);
Lambda.TX_CedarLakes = rmmissing(TX_CedarLakes.HS_Lambda)*365;
Lambda2.TX_CedarLakes = rmmissing(TX_CedarLakes.HS_Lambda2)*365;
Mu.TX_CedarLakes = rmmissing(TX_CedarLakes.HS_Mu);
Threshold.TX_CedarLakes = rmmissing(TX_CedarLakes.HS_Threshold);


%%


%%% Storing the names in a struct
Names.AL_Dauphin = 'AL - Dauphin';
Names.FL_Shell = 'FL - Shell';
% Names.GA_LittleTybee = 'GA - LittleTybee';
Names.MA_Plum = 'MA - Plum';
Names.NC_BaldHead = 'NC - BaldHead';
Names.NC_Masonboro = 'NC - Masonboro';
Names.NC_Portsmouth = 'NC - Portsmouth';
% Names.SC_Lighthouse = 'SC - Lighthouse';
% Names.SC_Pockoy = 'SC - Pockoy';
Names.TX_Follets = 'TX - Follets';
Names.TX_Hog = 'TX - Hog';
Names.TX_MatagordaPeninsula = 'TX - MatagordaPeninsula';
Names.TX_Padre = 'TX - Padre';
Names.VA_Assateague = 'VA - Assateague';
Names.VA = 'VA';
Names.TX_GV = 'TX - GV';
Names.TX_CC = 'TX - CC';
Names.OR_SB ='OR - SB';
Names.CA ='CA';
Names.FL ='FL';
Names.FL_SP = 'FL - SP';
Names.AUS_NSW = 'AUS - NSW';
Names.HI = 'HI';
Names.IT = 'IT';
Names.AK = 'AK';
Names.MA = 'MA';

%%% Colors per location %%%
Colors.AL_Dauphin = [1,1,0];
Colors.FL_Shell = [1,0,1];
% Colors.GA_LittleTybee = [0.94,0.5,0.5];
Colors.MA_Plum = [0,1,1];
Colors.NC_BaldHead = [0.6350, 0.0780, 0.1840];
Colors.NC_Masonboro = [0,0,1];
Colors.NC_Portsmouth =[0.9290, 0.6940, 0.1250];
% Colors.SC_Lighthouse =[0.4940, 0.1840, 0.5560];
% Colors.SC_Pockoy = [0.4660, 0.6740, 0.1880];
Colors.TX_Follets = [0, 0.4470, 0.7410];
Colors.TX_Hog = [0, 0.5, 0];
Colors.TX_MatagordaPeninsula = [1, 0, 0];
Colors.TX_Padre = [0.98, 0.5, 0.45];
Colors.VA_Assateague = [0, 1, 0];
Colors.VA = [0.96 0.72 0.96];
Colors.TX_GV = [0.62 0.04 0.86];
Colors.TX_CC = [0.98 0.5 0.45];
Colors.OR_SB = [0.05 0.7 0.62];
Colors.CA = [0.98 0.91 0.62];
Colors.FL = [0.84 0.86 0.87];
Colors.FL_SP = [0 0 0];
Colors.AUS_NSW = [1 0.5 0.5];
Colors.HI = [0 0 0];
Colors.IT = [0.6 0.2 0];
Colors.AK = [0.5 0.5 0];
Colors.MA = [0.6 0.6 0.6];
Colors.Gray = [0.6, 0.6, 0.6];
Colors.Black = [0, 0, 0];


%%% MSL to NAVD88 reference (from tidesandcurrents.com) %%%
MSLToNAVD88.AL_Dauphin = -0.016;
MSLToNAVD88.FL_Shell = -0.041;
% MSLToNAVD88.GA_LittleTybee = 0.071;
MSLToNAVD88.MA_Plum = 0.092;
MSLToNAVD88.NC_BaldHead = 0.112;
MSLToNAVD88.NC_Masonboro = 0.112;
MSLToNAVD88.NC_Portsmouth = 0.112;
% MSLToNAVD88.SC_Lighthouse = 0.071;
% MSLToNAVD88.SC_Pockoy = 0.071;
MSLToNAVD88.TX_Follets = -0.158;
MSLToNAVD88.TX_Hog = -0.158;
MSLToNAVD88.TX_MatagordaPeninsula = -0.158;
MSLToNAVD88.TX_Padre = -0.131;
MSLToNAVD88.VA_Assateague = 0.106;
MSLToNAVD88.VA = 0.106;
MSLToNAVD88.TX_GV = -0.158;
MSLToNAVD88.TX_CC = -0.131;
MSLToNAVD88.OR_SB = -1.124;
MSLToNAVD88.CA = -0.905;
MSLToNAVD88.FL = 0.288;
MSLToNAVD88.FL_SP = 0.096;
MSLToNAVD88.AUS_NSW = [];
MSLToNAVD88.HI = [];
MSLToNAVD88.IT = [];
MSLToNAVD88.AK = [];
MSLToNAVD88.MA = 0.092;

MSLToNAVD88.TX_CedarLakes = [];

save('MSLToNAVD88.mat','MSLToNAVD88')


%%% Extracting foreshore slope values %%%
Slopes.AL_Dauphin = rmmissing(AL_Dauphin_CS.Slope);
Slopes.FL_Shell = rmmissing(FL_Shell_CS.Slope);
% Slopes.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.Slope);
Slopes.MA_Plum = rmmissing(MA_Plum_CS.Slope);
Slopes.NC_BaldHead = rmmissing(NC_BaldHead_CS.Slope);
Slopes.NC_Masonboro = rmmissing(NC_Masonboro_CS.Slope);
Slopes.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.Slope);
% Slopes.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.Slope);
% Slopes.SC_Pockoy = rmmissing(SC_Pockoy_CS.Slope);
Slopes.TX_Follets = rmmissing(TX_Follets_CS.Slope);
Slopes.TX_Hog = rmmissing(TX_Hog_CS.Slope);
Slopes.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.Slope);
% Slopes.TX_Padre = rmmissing(TX_Padre_CS.Slope);
Slopes.VA_Assateague = rmmissing(VA_Assateague_HS.Slope);
Slopes.VA = rmmissing(VA_HS.Slope);
Slopes.TX_GV = rmmissing(TX_GV_CS.Slope);
Slopes.TX_CC = rmmissing(TX_CC_CS.Slope);
Slopes.OR_SB = rmmissing(OR_SB_HS.Slope);
Slopes.CA = rmmissing(CA_HS.Slope);
Slopes.FL = rmmissing(FL_CS.Slope);
Slopes.FL_SP = rmmissing(FL_SP_CS.Slope);
Slopes.AUS_NSW = rmmissing(AUS_NSW_CS.Slope);
Slopes.HI = rmmissing(HI_CS.Slope);
Slopes.IT = rmmissing(IT_CS.Slope);
Slopes.AK = rmmissing(AK_HS.Slope);
Slopes.MA = rmmissing(MA_CS.Slope);

save('Slopes.mat','Slopes')

%%% References to MSL %%%
% New Results
Ref.AL_Dauphin = rmmissing(AL_Dauphin_CS.Reference);
Ref.FL_Shell = rmmissing(FL_Shell_CS.Reference);
% Ref.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.Reference);
Ref.MA_Plum = rmmissing(MA_Plum_CS.Reference);
Ref.NC_BaldHead = rmmissing(NC_BaldHead_CS.Reference);
Ref.NC_Masonboro = rmmissing(NC_Masonboro_CS.Reference);
Ref.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.Reference);
% Ref.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.Reference);
% Ref.SC_Pockoy = rmmissing(SC_Pockoy_CS.Reference);
Ref.TX_Follets = rmmissing(TX_Follets_CS.Reference);
Ref.TX_Hog = rmmissing(TX_Hog_CS.Reference);
Ref.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.Reference);
% Ref.TX_Padre = rmmissing(TX_Padre_CS.Reference);
Ref.VA_Assateague = rmmissing(VA_Assateague_HS.Reference);
% Former Results
Ref.VA = rmmissing(VA_HS.Reference);      
Ref.TX_GV = rmmissing(TX_GV_CS.Reference);
Ref.TX_CC = rmmissing(TX_CC_CS.Reference);
Ref.OR_SB = rmmissing(OR_SB_HS.Reference);
Ref.CA = rmmissing(CA_HS.Reference);
Ref.FL = rmmissing(FL_CS.Reference);
Ref.FL_SP = rmmissing(FL_SP_CS.Reference);
Ref.AUS_NSW = rmmissing(AUS_NSW_CS.Reference);
Ref.HI = rmmissing(HI_CS.Reference);
Ref.IT = rmmissing(IT_CS.Reference);
Ref.AK = rmmissing(AK_HS.Reference);
Ref.MA = rmmissing(MA_CS.Reference);


%%% Number of events per year -- Lambda %%%
% New Results
Lambda.AL_Dauphin = rmmissing(AL_Dauphin_CS.CS_Lambda)*365;
Lambda.FL_Shell = rmmissing(FL_Shell_CS.CS_Lambda)*365;
% Lambda.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.CS_Lambda)*365;
Lambda.MA_Plum = rmmissing(MA_Plum_CS.CS_Lambda)*365;
Lambda.NC_BaldHead = rmmissing(NC_BaldHead_CS.CS_Lambda)*365;
Lambda.NC_Masonboro = rmmissing(NC_Masonboro_CS.CS_Lambda)*365;
Lambda.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.CS_Lambda)*365;
% Lambda.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.CS_Lambda)*365;
% Lambda.SC_Pockoy = rmmissing(SC_Pockoy_CS.CS_Lambda)*365;
Lambda.TX_Follets = rmmissing(TX_Follets_CS.CS_Lambda)*365;
Lambda.TX_Hog = rmmissing(TX_Hog_CS.CS_Lambda)*365;
Lambda.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.CS_Lambda)*365;
% Lambda.TX_Padre = rmmissing(TX_Padre_CS.CS_Lambda)*365;
Lambda.VA_Assateague = rmmissing(VA_Assateague_HS.HS_Lambda)*365;
% Former Results
Lambda.VA = rmmissing(VA_HS.HS_Lambda)*365;
Lambda.TX_GV = rmmissing(TX_GV_CS.CS_Lambda)*365;
Lambda.TX_CC = rmmissing(TX_CC_CS.CS_Lambda)*365;
Lambda.OR_SB = rmmissing(OR_SB_HS.HS_Lambda)*365;
Lambda.CA = rmmissing(CA_HS.HS_Lambda)*365;
Lambda.FL = rmmissing(FL_CS.CS_Lambda)*365;
Lambda.FL_SP = rmmissing(FL_SP_CS.CS_Lambda)*365;
Lambda.AUS_NSW = rmmissing(AUS_NSW_CS.CS_Lambda)*365;
Lambda.HI = rmmissing(HI_CS.CS_Lambda)*365;
Lambda.IT = rmmissing(IT_CS.CS_Lambda)*365;
Lambda.AK = rmmissing(AK_HS.HS_Lambda)*365;
Lambda.MA = rmmissing(MA_CS.CS_Lambda)*365;

%%% Number of events per year -- Lambda (second type of estimation) %%%
% New Results
Lambda2.AL_Dauphin = rmmissing(AL_Dauphin_CS.CS_Lambda2)*365;
Lambda2.FL_Shell = rmmissing(FL_Shell_CS.CS_Lambda2)*365;
% Lambda2.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.CS_Lambda2)*365;
Lambda2.MA_Plum = rmmissing(MA_Plum_CS.CS_Lambda2)*365;
Lambda2.NC_BaldHead = rmmissing(NC_BaldHead_CS.CS_Lambda2)*365;
Lambda2.NC_Masonboro = rmmissing(NC_Masonboro_CS.CS_Lambda2)*365;
Lambda2.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.CS_Lambda2)*365;
% Lambda2.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.CS_Lambda2)*365;
% Lambda2.SC_Pockoy = rmmissing(SC_Pockoy_CS.CS_Lambda2)*365;
Lambda2.TX_Follets = rmmissing(TX_Follets_CS.CS_Lambda2)*365;
Lambda2.TX_Hog = rmmissing(TX_Hog_CS.CS_Lambda2)*365;
Lambda2.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.CS_Lambda2)*365;
% Lambda2.TX_Padre = rmmissing(TX_Padre_CS.CS_Lambda2)*365;
Lambda2.VA_Assateague = rmmissing(VA_Assateague_HS.HS_Lambda2)*365;
% Former Results
Lambda2.VA = rmmissing(VA_HS.HS_Lambda2)*365;
Lambda2.TX_GV = rmmissing(TX_GV_CS.CS_Lambda2)*365;
Lambda2.TX_CC = rmmissing(TX_CC_CS.CS_Lambda2)*365;
Lambda2.OR_SB = rmmissing(OR_SB_HS.HS_Lambda2)*365;
Lambda2.CA = rmmissing(CA_HS.HS_Lambda2)*365;
Lambda2.FL = rmmissing(FL_CS.CS_Lambda2)*365;
Lambda2.FL_SP = rmmissing(FL_SP_CS.CS_Lambda2)*365;
Lambda2.AUS_NSW = rmmissing(AUS_NSW_CS.CS_Lambda2)*365;
Lambda2.HI = rmmissing(HI_CS.CS_Lambda2)*365;
Lambda2.IT = rmmissing(IT_CS.CS_Lambda2)*365;
Lambda2.AK = rmmissing(AK_HS.HS_Lambda2)*365;
Lambda2.MA = rmmissing(MA_CS.CS_Lambda2)*365;

%%% Mark per event -- Mu %%%
% New Results
Mu.AL_Dauphin = rmmissing(AL_Dauphin_CS.CS_Mu);
Mu.FL_Shell = rmmissing(FL_Shell_CS.CS_Mu);
% Mu.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.CS_Mu);
Mu.MA_Plum = rmmissing(MA_Plum_CS.CS_Mu);
Mu.NC_BaldHead = rmmissing(NC_BaldHead_CS.CS_Mu);
Mu.NC_Masonboro = rmmissing(NC_Masonboro_CS.CS_Mu);
Mu.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.CS_Mu);
% Mu.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.CS_Mu);
% Mu.SC_Pockoy = rmmissing(SC_Pockoy_CS.CS_Mu);
Mu.TX_Follets = rmmissing(TX_Follets_CS.CS_Mu);
Mu.TX_Hog = rmmissing(TX_Hog_CS.CS_Mu);
Mu.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.CS_Mu);
% Mu.TX_Padre = rmmissing(TX_Padre_CS.CS_Mu);
Mu.VA_Assateague = rmmissing(VA_Assateague_HS.HS_Mu);
% Former Results
Mu.VA = rmmissing(VA_HS.HS_Mu);
Mu.TX_GV = rmmissing(TX_GV_CS.CS_Mu);
Mu.TX_CC = rmmissing(TX_CC_CS.CS_Mu);
Mu.OR_SB = rmmissing(OR_SB_HS.HS_Mu);
Mu.CA = rmmissing(CA_HS.HS_Mu);
Mu.FL = rmmissing(FL_CS.CS_Mu);
Mu.FL_SP = rmmissing(FL_SP_CS.CS_Mu);
Mu.AUS_NSW = rmmissing(AUS_NSW_CS.CS_Mu);
Mu.HI = rmmissing(HI_CS.CS_Mu);
Mu.IT = rmmissing(IT_CS.CS_Mu);
Mu.AK = rmmissing(AK_HS.HS_Mu);
Mu.MA = rmmissing(MA_CS.CS_Mu);

%%% Thresholds %%%
%%% Check if thresholds are of the same lengths as lambda & mu values
% New Results
Threshold.AL_Dauphin = rmmissing(AL_Dauphin_CS.CS_Threshold);
Threshold.FL_Shell = rmmissing(FL_Shell_CS.CS_Threshold);
% Threshold.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.CS_Threshold);
Threshold.MA_Plum = rmmissing(MA_Plum_CS.CS_Threshold);
Threshold.NC_BaldHead = rmmissing(NC_BaldHead_CS.CS_Threshold);
Threshold.NC_Masonboro = rmmissing(NC_Masonboro_CS.CS_Threshold);
Threshold.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.CS_Threshold);
% Threshold.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.CS_Threshold);
% Threshold.SC_Pockoy = rmmissing(SC_Pockoy_CS.CS_Threshold);
Threshold.TX_Follets = rmmissing(TX_Follets_CS.CS_Threshold);
Threshold.TX_Hog = rmmissing(TX_Hog_CS.CS_Threshold);
Threshold.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.CS_Threshold);
% Threshold.TX_Padre = rmmissing(TX_Padre_CS.CS_Threshold);
Threshold.VA_Assateague = rmmissing(VA_Assateague_HS.HS_Threshold);
% Former Results
Threshold.VA = rmmissing(VA_HS.HS_Threshold);
Threshold.TX_GV = rmmissing(TX_GV_CS.CS_Threshold);
Threshold.TX_CC = rmmissing(TX_CC_CS.CS_Threshold);
Threshold.OR_SB = rmmissing(OR_SB_HS.HS_Threshold);
Threshold.CA = rmmissing(CA_HS.HS_Threshold);
Threshold.FL = rmmissing(FL_CS.CS_Threshold);
Threshold.FL_SP = rmmissing(FL_SP_CS.CS_Threshold);
Threshold.AUS_NSW = rmmissing(AUS_NSW_CS.CS_Threshold);
Threshold.HI = rmmissing(HI_CS.CS_Threshold);
Threshold.IT = rmmissing(IT_CS.CS_Threshold);
Threshold.AK = rmmissing(AK_HS.HS_Threshold);
Threshold.MA = rmmissing(MA_CS.CS_Threshold);
