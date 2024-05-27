%%% Exceedance probability plot Marks
sz = [20 60];

% IA Complemetary CDF - Fig. 3A
% Extracting One Representative Threshold per location

%%% New Results
%%% AL_Dauphin
Idx = ff_VarIdx(AL_Dauphin_CS,'CS','IntArr');
VarNames = AL_Dauphin_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AL_Dauphin_CS.CS_Threshold) - Beach.AL_Dauphin,1)==0;
BeachIA.AL_Dauphin = rmmissing(AL_Dauphin_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL_Shell
Idx = ff_VarIdx(FL_Shell_CS,'CS','IntArr');
VarNames = FL_Shell_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_Shell_CS.CS_Threshold) - Beach.FL_Shell,1)==0;
BeachIA.FL_Shell = rmmissing(FL_Shell_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% GA_LittleTybee
% Idx = ff_VarIdx(GA_LittleTybee_CS,'CS','IntArr');
% VarNames = GA_LittleTybee_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(GA_LittleTybee_CS.CS_Threshold) - Beach.GA_LittleTybee,1)==0;
% BeachIA.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% MA_Plum
Idx = ff_VarIdx(MA_Plum_CS,'CS','IntArr');
VarNames = MA_Plum_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(MA_Plum_CS.CS_Threshold) - Beach.MA_Plum,1)==0;
BeachIA.MA_Plum = rmmissing(MA_Plum_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_BaldHead
Idx = ff_VarIdx(NC_BaldHead_CS,'CS','IntArr');
VarNames = NC_BaldHead_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_BaldHead_CS.CS_Threshold) - Beach.NC_BaldHead,1)==0;
BeachIA.NC_BaldHead = rmmissing(NC_BaldHead_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_Masonboro
Idx = ff_VarIdx(NC_Masonboro_CS,'CS','IntArr');
VarNames = NC_Masonboro_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_Masonboro_CS.CS_Threshold) - Beach.NC_Masonboro,1)==0;
BeachIA.NC_Masonboro = rmmissing(NC_Masonboro_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_Portsmouth
Idx = ff_VarIdx(NC_Portsmouth_CS,'CS','IntArr');
VarNames = NC_Portsmouth_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_Portsmouth_CS.CS_Threshold) - Beach.NC_Portsmouth,1)==0;
BeachIA.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% SC_Lighthouse
% Idx = ff_VarIdx(SC_Lighthouse_CS,'CS','IntArr');
% VarNames = SC_Lighthouse_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(SC_Lighthouse_CS.CS_Threshold) - Beach.SC_Lighthouse,1)==0;
% BeachIA.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
% %%% SC_Pockoy
% Idx = ff_VarIdx(SC_Pockoy_CS,'CS','IntArr');
% VarNames = SC_Pockoy_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(SC_Pockoy_CS.CS_Threshold) - Beach.SC_Pockoy,1)==0;
% BeachIA.SC_Pockoy = rmmissing(SC_Pockoy_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% TX_Follets
Idx = ff_VarIdx(TX_Follets_CS,'CS','IntArr');
VarNames = TX_Follets_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_Follets_CS.CS_Threshold) - Beach.TX_Follets,1)==0;
BeachIA.TX_Follets = rmmissing(TX_Follets_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_Hog
Idx = ff_VarIdx(TX_Hog_CS,'CS','IntArr');
VarNames = TX_Hog_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_Hog_CS.CS_Threshold) - Beach.TX_Hog,1)==0;
BeachIA.TX_Hog = rmmissing(TX_Hog_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_MatagordaPeninsula
Idx = ff_VarIdx(TX_MatagordaPeninsula_CS,'CS','IntArr');
VarNames = TX_MatagordaPeninsula_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_MatagordaPeninsula_CS.CS_Threshold) - Beach.TX_MatagordaPeninsula,1)==0;
BeachIA.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% TX_Padre
% Idx = ff_VarIdx(TX_Padre_CS,'CS','IntArr');
% VarNames = TX_Padre_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(TX_Padre_CS.CS_Threshold) - Beach.TX_Padre,1)==0;
% BeachIA.TX_Padre = rmmissing(TX_Padre_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% VA_Assateague
Idx = ff_VarIdx(VA_Assateague_HS,'HS','IntArr');
VarNames = VA_Assateague_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(VA_Assateague_HS.HS_Threshold) - Beach.VA_Assateague,1)==0;
BeachIA.VA_Assateague = rmmissing(VA_Assateague_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx


%%% Former Results
%%% VA
Idx = ff_VarIdx(VA_HS,'HS','IntArr');
VarNames = VA_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(VA_HS.HS_Threshold) - Beach.VA,1)==0;
BeachIA.VA = rmmissing(VA_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_GV
Idx = ff_VarIdx(TX_GV_CS,'CS','IntArr');
VarNames = TX_GV_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_GV_CS.CS_Threshold) - Beach.TX_GV,1)==0;
BeachIA.TX_GV = rmmissing(TX_GV_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_CC
Idx = ff_VarIdx(TX_CC_CS,'CS','IntArr');
VarNames = TX_CC_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_CC_CS.CS_Threshold) - Beach.TX_CC,1)==0;
BeachIA.TX_CC = rmmissing(TX_CC_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% OR
Idx = ff_VarIdx(OR_SB_HS,'HS','IntArr');
VarNames = OR_SB_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(OR_SB_HS.HS_Threshold) - Beach.OR_SB,1)==0;
BeachIA.OR_SB = rmmissing(OR_SB_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% CA
Idx = ff_VarIdx(CA_HS,'HS','IntArr');
VarNames = CA_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(CA_HS.HS_Threshold) - Beach.CA,1)==0;
BeachIA.CA = rmmissing(CA_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL
Idx = ff_VarIdx(FL_CS,'CS','IntArr');
VarNames = FL_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_CS.CS_Threshold) - Beach.FL,1)==0;
BeachIA.FL = rmmissing(FL_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL_SP
Idx = ff_VarIdx(FL_SP_CS,'CS','IntArr');
VarNames = FL_SP_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_SP_CS.CS_Threshold) - Beach.FL_SP,1)==0;
BeachIA.FL_SP = rmmissing(FL_SP_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% AUS_NSW
Idx = ff_VarIdx(AUS_NSW_CS,'CS','IntArr');
VarNames = AUS_NSW_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AUS_NSW_CS.CS_Threshold) - Beach.AUS_NSW,1)==0;
BeachIA.AUS_NSW = rmmissing(AUS_NSW_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% HI
Idx = ff_VarIdx(HI_CS,'CS','IntArr');
VarNames = HI_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(HI_CS.CS_Threshold) - Beach.HI,1)==0;
BeachIA.HI = rmmissing(HI_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% IT
Idx = ff_VarIdx(IT_CS,'CS','IntArr');
VarNames = IT_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(IT_CS.CS_Threshold) - Beach.IT,1)==0;
BeachIA.IT = rmmissing(IT_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% AK
Idx = ff_VarIdx(AK_HS,'HS','IntArr');
VarNames = AK_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AK_HS.HS_Threshold) - Beach.AK,1)==0;
BeachIA.AK = rmmissing(AK_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% MA
Idx = ff_VarIdx(MA_CS,'CS','IntArr');
VarNames = MA_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(MA_CS.CS_Threshold) - Beach.MA,1)==0;
BeachIA.MA = rmmissing(MA_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx

dx = 2;

h = zeros(1,10);
figure
h(1) = ff_exprobplot(BeachIA.AL_Dauphin,dx,Names.AL_Dauphin,Colors.AL_Dauphin,sz(2));
hold on
h(2) = ff_exprobplot(BeachIA.FL_Shell,dx,Names.FL_Shell,Colors.FL_Shell,sz(2));
% h(3) = ff_exprobplot(BeachIA.GA_LittleTybee,dx,Names.GA_LittleTybee,Colors.GA_LittleTybee,sz(2));
h(3) = ff_exprobplot(BeachIA.MA_Plum,dx,Names.MA_Plum,Colors.MA_Plum,sz(2));
h(4) = ff_exprobplot(BeachIA.NC_BaldHead,dx,Names.NC_BaldHead,Colors.NC_BaldHead,sz(2));
h(5) = ff_exprobplot(BeachIA.NC_Masonboro,dx,Names.NC_Masonboro,Colors.NC_Masonboro,sz(2));
h(6) = ff_exprobplot(BeachIA.NC_Portsmouth,dx,Names.NC_Portsmouth,Colors.NC_Portsmouth,sz(2));
% h(8) = ff_exprobplot(BeachIA.SC_Lighthouse,dx,Names.SC_Lighthouse,Colors.SC_Lighthouse,sz(2));
% h(9) = ff_exprobplot(BeachIA.SC_Pockoy,dx,Names.SC_Pockoy,Colors.SC_Pockoy,sz(2));
h(7) = ff_exprobplot(BeachIA.TX_Follets,dx,Names.TX_Follets,Colors.TX_Follets,sz(2));
h(8) = ff_exprobplot(BeachIA.TX_Hog,dx,Names.TX_Hog,Colors.TX_Hog,sz(2));
h(9) = ff_exprobplot(BeachIA.TX_MatagordaPeninsula,dx,Names.TX_MatagordaPeninsula,Colors.TX_MatagordaPeninsula,sz(2));
% h(10) = ff_exprobplot(BeachIA.TX_Padre,dx,Names.TX_Padre,Colors.TX_Padre,sz(2));
h(10) = ff_exprobplot(BeachIA.VA_Assateague,dx,Names.VA_Assateague,Colors.VA_Assateague,sz(2));
x = (0:0.01:4);
y = exp(-x);
plot(x,y,'--','Color','k','LineWidth',1.5,'DisplayName','')
legend(h(1:10),'NumColumns',2,'Location','northeast','FontSize',sz(1))
axis([0 3.6 0.03 1])
xlabel('Normalized Inter-arrival ($\lambda$ $\Delta$t)','Interpreter','latex','FontSize',sz(1))
ylabel('Complementary CDF ($1 - CDF$)','Interpreter','latex','FontSize',sz(1))
set(gca,'FontSize',sz(1),'YScale','log')
set(gcf, 'Position', get(0, 'Screensize'));

clear x y h

h = zeros(1,12);
figure
h(1) = ff_exprobplot(BeachIA.VA,dx,Names.VA,Colors.VA,sz(2));
hold on
h(2) = ff_exprobplot(BeachIA.TX_GV,dx,Names.TX_GV,Colors.TX_GV,sz(2));
h(3) = ff_exprobplot(BeachIA.TX_CC,dx,Names.TX_CC,Colors.TX_CC,sz(2));
h(4) = ff_exprobplot(BeachIA.OR_SB,dx,Names.OR_SB,Colors.OR_SB,sz(2));
h(5) = ff_exprobplot(BeachIA.CA,dx,Names.CA,Colors.CA,sz(2));
h(6) = ff_exprobplot(BeachIA.FL,dx,Names.FL,Colors.FL,sz(2));
h(7) = ff_exprobplot(BeachIA.FL_SP,dx,Names.FL_SP,Colors.FL_SP,sz(2));
h(8) = ff_exprobplot(BeachIA.AUS_NSW,dx,Names.AUS_NSW,Colors.AUS_NSW,sz(2));
h(9) = ff_exprobplot(BeachIA.HI,dx,Names.HI,Colors.HI,sz(2));
h(10) = ff_exprobplot(BeachIA.IT,dx,Names.IT,Colors.IT,sz(2));
h(11) = ff_exprobplot(BeachIA.AK,dx,Names.AK,Colors.AK,sz(2));
h(12) = ff_exprobplot(BeachIA.MA,dx,Names.MA,Colors.MA,sz(2));
x = (0:0.01:4);
y = exp(-x);
plot(x,y,'--','Color','k','LineWidth',1.5)
legend(h(1:12),'NumColumns',2,'Location','northeast','FontSize',sz(1))
axis([0 3.6 0.03 1])
xlabel('Normalized Inter-arrival ($\lambda$ $\Delta$t)','Interpreter','latex','FontSize',sz(1))
ylabel('Complementary CDF ($1 - CDF$)','Interpreter','latex','FontSize',sz(1))
set(gca,'FontSize',sz(1),'YScale','log')
set(gcf, 'Position', get(0, 'Screensize'));

clear x y dx h

% Mark Complemetary CDF - Fig. 3B
% Extracting One Representative Threshold per location

%%% New Results
%%% AL_Dauphin
Idx = ff_VarIdx(AL_Dauphin_CS,'CS','MaxMarks');
VarNames = AL_Dauphin_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AL_Dauphin_CS.CS_Threshold) - Beach.AL_Dauphin,1)==0;
BeachM.AL_Dauphin = rmmissing(AL_Dauphin_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL_Shell
Idx = ff_VarIdx(FL_Shell_CS,'CS','MaxMarks');
VarNames = FL_Shell_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_Shell_CS.CS_Threshold) - Beach.FL_Shell,1)==0;
BeachM.FL_Shell = rmmissing(FL_Shell_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% GA_LittleTybee
% Idx = ff_VarIdx(GA_LittleTybee_CS,'CS','MaxMarks');
% VarNames = GA_LittleTybee_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(GA_LittleTybee_CS.CS_Threshold) - Beach.GA_LittleTybee,1)==0;
% BeachM.GA_LittleTybee = rmmissing(GA_LittleTybee_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% MA_Plum
Idx = ff_VarIdx(MA_Plum_CS,'CS','MaxMarks');
VarNames = MA_Plum_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(MA_Plum_CS.CS_Threshold) - Beach.MA_Plum,1)==0;
BeachM.MA_Plum = rmmissing(MA_Plum_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_BaldHead
Idx = ff_VarIdx(NC_BaldHead_CS,'CS','MaxMarks');
VarNames = NC_BaldHead_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_BaldHead_CS.CS_Threshold) - Beach.NC_BaldHead,1)==0;
BeachM.NC_BaldHead = rmmissing(NC_BaldHead_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_Masonboro
Idx = ff_VarIdx(NC_Masonboro_CS,'CS','MaxMarks');
VarNames = NC_Masonboro_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_Masonboro_CS.CS_Threshold) - Beach.NC_Masonboro,1)==0;
BeachM.NC_Masonboro = rmmissing(NC_Masonboro_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% NC_Portsmouth
Idx = ff_VarIdx(NC_Portsmouth_CS,'CS','MaxMarks');
VarNames = NC_Portsmouth_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(NC_Portsmouth_CS.CS_Threshold) - Beach.NC_Portsmouth,1)==0;
BeachM.NC_Portsmouth = rmmissing(NC_Portsmouth_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% SC_Lighthouse
% Idx = ff_VarIdx(SC_Lighthouse_CS,'CS','MaxMarks');
% VarNames = SC_Lighthouse_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(SC_Lighthouse_CS.CS_Threshold) - Beach.SC_Lighthouse,1)==0;
% BeachM.SC_Lighthouse = rmmissing(SC_Lighthouse_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
% %%% SC_Pockoy
% Idx = ff_VarIdx(SC_Pockoy_CS,'CS','MaxMarks');
% VarNames = SC_Pockoy_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(SC_Pockoy_CS.CS_Threshold) - Beach.SC_Pockoy,1)==0;
% BeachM.SC_Pockoy = rmmissing(SC_Pockoy_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% TX_Follets
Idx = ff_VarIdx(TX_Follets_CS,'CS','MaxMarks');
VarNames = TX_Follets_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_Follets_CS.CS_Threshold) - Beach.TX_Follets,1)==0;
BeachM.TX_Follets = rmmissing(TX_Follets_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_Hog
Idx = ff_VarIdx(TX_Hog_CS,'CS','MaxMarks');
VarNames = TX_Hog_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_Hog_CS.CS_Threshold) - Beach.TX_Hog,1)==0;
BeachM.TX_Hog = rmmissing(TX_Hog_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_MatagordaPeninsula
Idx = ff_VarIdx(TX_MatagordaPeninsula_CS,'CS','MaxMarks');
VarNames = TX_MatagordaPeninsula_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_MatagordaPeninsula_CS.CS_Threshold) - Beach.TX_MatagordaPeninsula,1)==0;
BeachM.TX_MatagordaPeninsula = rmmissing(TX_MatagordaPeninsula_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
% %%% TX_Padre
% Idx = ff_VarIdx(TX_Padre_CS,'CS','MaxMarks');
% VarNames = TX_Padre_CS.Properties.VariableNames(Idx);
% PosBeach = round(rmmissing(TX_Padre_CS.CS_Threshold) - Beach.TX_Padre,1)==0;
% BeachM.TX_Padre = rmmissing(TX_Padre_CS.(char(VarNames(PosBeach))));
% clear VarNames PosBeach Idx
%%% VA_Assateague
Idx = ff_VarIdx(VA_Assateague_HS,'HS','MaxMarks');
VarNames = VA_Assateague_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(VA_Assateague_HS.HS_Threshold) - Beach.VA_Assateague,1)==0;
BeachM.VA_Assateague = rmmissing(VA_Assateague_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx


%%% Former Results
%%% VA
Idx = ff_VarIdx(VA_HS,'HS','MaxMarks');
VarNames = VA_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(VA_HS.HS_Threshold) - Beach.VA,1)==0;
BeachM.VA = rmmissing(VA_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_GV
Idx = ff_VarIdx(TX_GV_CS,'CS','MaxMarks');
VarNames = TX_GV_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_GV_CS.CS_Threshold) - Beach.TX_GV,1)==0;
BeachM.TX_GV = rmmissing(TX_GV_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% TX_CC
Idx = ff_VarIdx(TX_CC_CS,'CS','MaxMarks');
VarNames = TX_CC_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(TX_CC_CS.CS_Threshold) - Beach.TX_CC,1)==0;
BeachM.TX_CC = rmmissing(TX_CC_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% OR
Idx = ff_VarIdx(OR_SB_HS,'HS','MaxMarks');
VarNames = OR_SB_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(OR_SB_HS.HS_Threshold) - Beach.OR_SB,1)==0;
BeachM.OR_SB = rmmissing(OR_SB_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% CA
Idx = ff_VarIdx(CA_HS,'HS','MaxMarks');
VarNames = CA_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(CA_HS.HS_Threshold) - Beach.CA,1)==0;
BeachM.CA = rmmissing(CA_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL
Idx = ff_VarIdx(FL_CS,'CS','MaxMarks');
VarNames = FL_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_CS.CS_Threshold) - Beach.FL,1)==0;
BeachM.FL = rmmissing(FL_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% FL_SP
Idx = ff_VarIdx(FL_SP_CS,'CS','MaxMarks');
VarNames = FL_SP_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(FL_SP_CS.CS_Threshold) - Beach.FL_SP,1)==0;
BeachM.FL_SP = rmmissing(FL_SP_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% AUS NSW
Idx = ff_VarIdx(AUS_NSW_CS,'CS','MaxMarks');
VarNames = AUS_NSW_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AUS_NSW_CS.CS_Threshold) - Beach.AUS_NSW,1)==0;
BeachM.AUS_NSW = rmmissing(AUS_NSW_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% HI
Idx = ff_VarIdx(HI_CS,'CS','MaxMarks');
VarNames = HI_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(HI_CS.CS_Threshold) - Beach.HI,1)==0;
BeachM.HI = rmmissing(HI_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% IT
Idx = ff_VarIdx(IT_CS,'CS','MaxMarks');
VarNames = IT_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(IT_CS.CS_Threshold) - Beach.IT,1)==0;
BeachM.IT = rmmissing(IT_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% AK
Idx = ff_VarIdx(AK_HS,'HS','MaxMarks');
VarNames = AK_HS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(AK_HS.HS_Threshold) - Beach.AK,1)==0;
BeachM.AK = rmmissing(AK_HS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx
%%% MA
Idx = ff_VarIdx(MA_CS,'CS','MaxMarks');
VarNames = MA_CS.Properties.VariableNames(Idx);
PosBeach = round(rmmissing(MA_CS.CS_Threshold) - Beach.MA,1)==0;
BeachM.MA = rmmissing(MA_CS.(char(VarNames(PosBeach))));
clear VarNames PosBeach Idx




%% Plot
dx = 0;

h = zeros(1,10);
figure
h(1) = ff_exprobplot(BeachM.AL_Dauphin,dx,Names.AL_Dauphin,Colors.AL_Dauphin,sz(2));
hold on
h(2) = ff_exprobplot(BeachM.FL_Shell,dx,Names.FL_Shell,Colors.FL_Shell,sz(2));
% h(3) = ff_exprobplot(BeachM.GA_LittleTybee,dx,Names.GA_LittleTybee,Colors.GA_LittleTybee,sz(2));
h(3) = ff_exprobplot(BeachM.MA_Plum,dx,Names.MA_Plum,Colors.MA_Plum,sz(2));
h(4) = ff_exprobplot(BeachM.NC_BaldHead,dx,Names.NC_BaldHead,Colors.NC_BaldHead,sz(2));
h(5) = ff_exprobplot(BeachM.NC_Masonboro,dx,Names.NC_Masonboro,Colors.NC_Masonboro,sz(2));
h(6) = ff_exprobplot(BeachM.NC_Portsmouth,dx,Names.NC_Portsmouth,Colors.NC_Portsmouth,sz(2));
% h(8) = ff_exprobplot(BeachM.SC_Lighthouse,dx,Names.SC_Lighthouse,Colors.SC_Lighthouse,sz(2));
% h(9) = ff_exprobplot(BeachM.SC_Pockoy,dx,Names.SC_Pockoy,Colors.SC_Pockoy,sz(2));
h(7) = ff_exprobplot(BeachM.TX_Follets,dx,Names.TX_Follets,Colors.TX_Follets,sz(2));
h(8) = ff_exprobplot(BeachM.TX_Hog,dx,Names.TX_Hog,Colors.TX_Hog,sz(2));
h(9) = ff_exprobplot(BeachM.TX_MatagordaPeninsula,dx,Names.TX_MatagordaPeninsula,Colors.TX_MatagordaPeninsula,sz(2));
% h(10) = ff_exprobplot(BeachM.TX_Padre,dx,Names.TX_Padre,Colors.TX_Padre,sz(2));
h(10) = ff_exprobplot(BeachM.VA_Assateague,dx,Names.VA_Assateague,Colors.VA_Assateague,sz(2));
x = (0:0.01:3);
y = exp(-x);
plot(x,y,'--','Color','k','LineWidth',1.5)
legend(h(1:10),'NumColumns',2,'Location','northeast','FontSize',sz(1))
axis([0 3 0.03 1])
xlabel('Normalized mark ($\frac{s}{\bar s}$)','Interpreter','latex','FontSize',sz(1))
ylabel('Complementary CDF ($1 - CDF$)','Interpreter','latex','FontSize',sz(1))
set(gca,'FontSize',sz(1),'YScale','log')
set(gcf, 'Position', get(0, 'Screensize'));

clear x y h

h = zeros(1,12);
figure
h(1) = ff_exprobplot(BeachM.VA,dx,Names.VA,Colors.VA,sz(2));
hold on
h(2) = ff_exprobplot(BeachM.TX_GV,dx,Names.TX_GV,Colors.TX_GV,sz(2));
h(3) = ff_exprobplot(BeachM.TX_CC,dx,Names.TX_CC,Colors.TX_CC,sz(2));
h(4) = ff_exprobplot(BeachM.OR_SB,dx,Names.OR_SB,Colors.OR_SB,sz(2));
h(5) = ff_exprobplot(BeachM.CA,dx,Names.CA,Colors.CA,sz(2));
h(6) = ff_exprobplot(BeachM.FL,dx,Names.FL,Colors.FL,sz(2));
h(7) = ff_exprobplot(BeachM.FL_SP,dx,Names.FL_SP,Colors.FL_SP,sz(2));
h(8) = ff_exprobplot(BeachM.AUS_NSW,dx,Names.AUS_NSW,Colors.AUS_NSW,sz(2));
h(9) = ff_exprobplot(BeachM.HI,dx,Names.HI,Colors.HI,sz(2));
h(10) = ff_exprobplot(BeachM.IT,dx,Names.IT,Colors.IT,sz(2));
h(11) = ff_exprobplot(BeachM.AK,dx,Names.AK,Colors.AK,sz(2));
h(12) = ff_exprobplot(BeachM.MA,dx,Names.MA,Colors.MA,sz(2));
x = (0:0.01:3);
y = exp(-x);
plot(x,y,'--','Color','k','LineWidth',1.5)
legend(h(1:12),'NumColumns',2,'Location','northeast','FontSize',sz(1))
axis([0 3 0.03 1])
xlabel('Normalized mark ($\frac{s}{\bar s}$)','Interpreter','latex','FontSize',sz(1))
ylabel('Complementary CDF ($1 - CDF$)','Interpreter','latex','FontSize',sz(1))
set(gca,'FontSize',sz(1),'YScale','log')
set(gcf, 'Position', get(0, 'Screensize'));

clear x y dx h

