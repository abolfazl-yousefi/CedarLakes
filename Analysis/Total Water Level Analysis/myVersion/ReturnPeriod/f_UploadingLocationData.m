
%% New TWL Analysis Results

%%% ALABAMA Dauphin %%%
AL_Dauphin_CS = load('AL_Dauphin_CS.mat');
AL_Dauphin_CS = AL_Dauphin_CS.Data;

%%% FLORIDA Shell %%%
FL_Shell_CS = load('FL_Shell_CS.mat');
FL_Shell_CS = FL_Shell_CS.Data;

%%% GEORGIA Little Tybee %%%
GA_LittleTybee_CS = load('GA_LittleTybee_CS.mat');
GA_LittleTybee_CS = GA_LittleTybee_CS.Data;

%%% MASSACHUSETTS Plum %%%
MA_Plum_CS = load('MA_Plum_CS.mat');
MA_Plum_CS = MA_Plum_CS.Data;

%%% NORTH CAROLINA Bald Head %%%
NC_BaldHead_CS = load('NC_BaldHead_CS.mat');
NC_BaldHead_CS = NC_BaldHead_CS.Data;

%%% NORTH CAROLINA Portsmouth %%%
NC_Masonboro_CS = load('NC_Masonboro_CS.mat');
NC_Masonboro_CS = NC_Masonboro_CS.Data;

%%% NORTH CAROLINA Portsmouth %%%
NC_Portsmouth_CS = load('NC_Portsmouth_CS.mat');
NC_Portsmouth_CS = NC_Portsmouth_CS.Data;

%%% SOUTH CAROLINA Lighthouse %%%
SC_Lighthouse_CS = load('SC_Lighthouse_CS.mat');
SC_Lighthouse_CS = SC_Lighthouse_CS.Data;

%%% SOUTH CAROLINA Pockoy %%%
SC_Pockoy_CS = load('SC_Pockoy_CS.mat');
SC_Pockoy_CS = SC_Pockoy_CS.Data;

%%% TEXAS Follets %%%
TX_Follets_CS = load('TX_Follets_CS.mat');
TX_Follets_CS = TX_Follets_CS.Data;

%%% TEXAS Hog %%%
TX_Hog_CS = load('TX_Hog_CS.mat');
TX_Hog_CS = TX_Hog_CS.Data;

%%% TEXAS Matagorda Peninsula %%%
TX_MatagordaPeninsula_CS = load('TX_MatagordaPeninsula_CS.mat');
TX_MatagordaPeninsula_CS = TX_MatagordaPeninsula_CS.Data;

%%% VIRGINIA Assateague %%%
VA_Assateague_CS = load('VA_Assateague_CS.mat');
VA_Assateague_CS = VA_Assateague_CS.Data;

%% Former TWL Analysis Results

%%% VIRGINIA %%%
% Info: wave bouy water depth = 18.3 (m)
VA_CS = load('VA_CS.mat');
VA_CS = VA_CS.Data;

%%% TEXAS - GALVESTON %%%
% Info: wave bouy water depth = 16.2 (m)
TX_GV_CS = load('TX_GV_CS.mat');
TX_GV_CS = TX_GV_CS.Data;

%%% TEXAS - CORPUS CHRISTI %%%
% Info: wave bouy water depth = 84.1 (m)
TX_CC_CS = load('TX_CC_CS.mat');
TX_CC_CS = TX_CC_CS.Data;

%%% OREGON SOUTH PORT %%%
OR_SB_CS = load('OR_SB_CS.mat');
OR_SB_CS = OR_SB_CS.Data;

%%% CALIFORNIA %%%
CA_CS = load('CA_CS.mat');
CA_CS = CA_CS.Data;

%%% FLORIDA Cape Canaveral %%%
FL_CS = load('FL_CS.mat');
FL_CS = FL_CS.Data;

%%% Florida St.Peterburg %%%
FL_SP_CS = load('FL_StP_CS.mat');
FL_SP_CS = FL_SP_CS.Data;

%%% AUSTRALIA NEW SOUTH WALES %%%
AUS_NSW_CS = load('AUS_NSW_CS.mat');
AUS_NSW_CS = AUS_NSW_CS.Data;

%%% HAWAII %%%
HI_CS = load('HI_CS.mat');
HI_CS = HI_CS.Data;

%%% ITALY %%%
IT_CS = load('IT_CS.mat');
IT_CS = IT_CS.Data;

%%% ITALY %%%
AK_CS = load('AK_CS.mat');
AK_CS = AK_CS.Data;

%%% MASSACHUSETTS BOSTON %%%
MA_CS = load('MA_BO_CS.mat');
MA_CS = MA_CS.Data;





%%% Storing the names in a struct
Names.AL_Dauphin = 'AL - Dauphin';
Names.FL_Shell = 'FL - Shell';
Names.GA_LittleTybee = 'GA - LittleTybee';
Names.MA_Plum = 'MA - Plum';
Names.NC_BaldHead = 'NC - BaldHead';
Names.NC_Masonboro = 'NC - Masonboro';
Names.NC_Portsmouth = 'NC - Portsmouth';
Names.SC_Lighthouse = 'SC - Lighthouse';
Names.SC_Pockoy = 'SC - Pockoy';
Names.TX_Follets = 'TX - Follets';
Names.TX_Hog = 'TX - Hog';
Names.TX_MatagordaPeninsula = 'TX - MatagordaPeninsula';
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
Colors.GA_LittleTybee = [0.94,0.5,0.5];
Colors.MA_Plum = [0,1,1];
Colors.NC_BaldHead = [0.6350, 0.0780, 0.1840];
Colors.NC_Masonboro = [0,0,1];
Colors.NC_Portsmouth =[0.9290, 0.6940, 0.1250];
Colors.SC_Lighthouse =[0.4940, 0.1840, 0.5560];
Colors.SC_Pockoy = [0.4660, 0.6740, 0.1880];
Colors.TX_Follets = [0, 0.4470, 0.7410];
Colors.TX_Hog = [0, 0.5, 0];
Colors.TX_MatagordaPeninsula = [1, 0, 0];
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

Beach = load('../BeachElevations.mat'); Beach = Beach.Beach;


N.AL_Dauphin = length(rmmissing(AL_Dauphin_CS.TWL_DailyMax));
N.FL_Shell = length(rmmissing(FL_Shell_CS.TWL_DailyMax));
N.GA_LittleTybee = length(rmmissing(GA_LittleTybee_CS.TWL_DailyMax));
N.MA_Plum = length(rmmissing(MA_Plum_CS.TWL_DailyMax));
N.NC_BaldHead = length(rmmissing(NC_BaldHead_CS.TWL_DailyMax));
N.NC_Masonboro = length(rmmissing(NC_Masonboro_CS.TWL_DailyMax));
N.NC_Portsmouth = length(rmmissing(NC_Portsmouth_CS.TWL_DailyMax));
N.SC_Lighthouse = length(rmmissing(SC_Lighthouse_CS.TWL_DailyMax));
N.SC_Pockoy = length(rmmissing(SC_Pockoy_CS.TWL_DailyMax));
N.TX_Follets = length(rmmissing(TX_Follets_CS.TWL_DailyMax));
N.TX_Hog = length(rmmissing(TX_Hog_CS.TWL_DailyMax));
N.TX_MatagordaPeninsula = length(rmmissing(TX_MatagordaPeninsula_CS.TWL_DailyMax));
N.VA_Assateague = length(rmmissing(VA_Assateague_CS.TWL_DailyMax));
N.VA = length(rmmissing(VA_CS.TWL_DailyMax));
N.TX_GV = length(rmmissing(TX_GV_CS.TWL_DailyMax));
N.TX_CC = length(rmmissing(TX_CC_CS.TWL_DailyMax));
N.OR_SB = length(rmmissing(OR_SB_CS.TWL_DailyMax));
N.CA = length(rmmissing(CA_CS.TWL_DailyMax));
N.FL = length(rmmissing(FL_CS.TWL_DailyMax));
N.FL_SP = length(rmmissing(FL_SP_CS.TWL_DailyMax));
N.AUS_NSW = length(rmmissing(AUS_NSW_CS.TWL_DailyMax));
N.HI = length(rmmissing(HI_CS.TWL_DailyMax));
N.IT = length(rmmissing(IT_CS.TWL_DailyMax));
N.AK = length(rmmissing(AK_CS.TWL_DailyMax));
N.MA = length(rmmissing(MA_CS.TWL_DailyMax));

