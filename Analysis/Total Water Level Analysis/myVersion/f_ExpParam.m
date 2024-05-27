

%%% EXPONENTIAL DISTRIBUTION PARAMETERS VS THRESHOLDS - BEACH ElEVATION

%% Frequency - Lambda
figure (1)
h = zeros(1,23);
h(1) = plot(Threshold.VA - Beach.VA, Lambda2.VA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','VA');
hold on
h(2) = plot(Threshold.TX_GV - Beach.TX_GV, Lambda2.TX_GV, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','TX GV');
h(3) = plot(Threshold.TX_CC - Beach.TX_CC, Lambda2.TX_CC, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','TX CC');
h(4) = plot(Threshold.OR_SB - Beach.OR_SB, Lambda2.OR_SB, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','OR SB');
h(5) = plot(Threshold.CA - Beach.CA, Lambda2.CA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','CA');
h(6) = plot(Threshold.FL - Beach.FL, Lambda2.FL, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','FL');
h(7) = plot(Threshold.FL_SP - Beach.FL_SP, Lambda2.FL_SP, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','FL SP');
h(8) = plot(Threshold.AUS_NSW - Beach.AUS_NSW, Lambda2.AUS_NSW, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','AUS NSW');
h(9) = plot(Threshold.HI - Beach.HI, Lambda2.HI, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','HI');
h(10) = plot(Threshold.IT - Beach.IT, Lambda2.IT, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','IT');
h(11) = plot(Threshold.AK - Beach.AK, Lambda2.AK, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','AK');
h(12) = plot(Threshold.MA - Beach.MA, Lambda2.MA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','MA');
h(13) = plot(Threshold.AL_Dauphin - Beach.AL_Dauphin, Lambda2.AL_Dauphin, 'color', Colors.AL_Dauphin, 'LineWidth',3,'DisplayName','AL Dauphin');
h(14) = plot(Threshold.FL_Shell - Beach.FL_Shell, Lambda2.FL_Shell, 'color', Colors.FL_Shell, 'LineWidth',3,'DisplayName','FL Shell');
% h(15) = plot(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Lambda2.GA_LittleTybee, 'color', Colors.GA_LittleTybee, 'LineWidth',3,'DisplayName','GA LittleTybee');
h(15) = plot(Threshold.MA_Plum - Beach.MA_Plum, Lambda2.MA_Plum, 'color', Colors.MA_Plum, 'LineWidth',3,'DisplayName','MA Plum');
h(16) = plot(Threshold.NC_BaldHead - Beach.NC_BaldHead, Lambda2.NC_BaldHead, 'color', Colors.NC_BaldHead, 'LineWidth',3,'DisplayName','NC BaldHead');
h(17) = plot(Threshold.NC_Masonboro - Beach.NC_Masonboro, Lambda2.NC_Masonboro, 'color', Colors.NC_Masonboro, 'LineWidth',3,'DisplayName','NC Masonboro');
h(18) = plot(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Lambda2.NC_Portsmouth, 'color', Colors.NC_Portsmouth, 'LineWidth',3,'DisplayName','NC Portsmouth');
% h(20) = plot(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Lambda2.SC_Lighthouse, 'color', Colors.SC_Lighthouse, 'LineWidth',3,'DisplayName','SC Lighthouse');
% h(21) = plot(Threshold.SC_Pockoy - Beach.SC_Pockoy, Lambda2.SC_Pockoy, 'color', Colors.SC_Pockoy, 'LineWidth',3,'DisplayName','SC Pockoy');
h(19) = plot(Threshold.TX_Follets - Beach.TX_Follets, Lambda2.TX_Follets, 'color', Colors.TX_Follets, 'LineWidth',3,'DisplayName','TX Follets');
h(20) = plot(Threshold.TX_Hog - Beach.TX_Hog, Lambda2.TX_Hog, 'color', Colors.TX_Hog, 'LineWidth',3,'DisplayName','TX Hog');
h(21) = plot(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Lambda2.TX_MatagordaPeninsula, 'color', Colors.TX_MatagordaPeninsula, 'LineWidth',3,'DisplayName','TX MatagordaPeninsula');
% h(22) = plot(Threshold.TX_Padre - Beach.TX_Padre, Lambda2.TX_Padre, 'color', Colors.TX_Padre, 'LineWidth',3,'DisplayName','TX Padre');
h(23) = plot(Threshold.VA_Assateague - Beach.VA_Assateague, Lambda2.VA_Assateague, 'color', Colors.VA_Assateague, 'LineWidth',3,'DisplayName','VA Assateague');
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per year)','FontSize',20);
title('Number of events per year','FontSize',26);
%% myChange
% legend(h(13:23),'NumColumns',2,'Location','northeast','FontSize',22)
%%
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h


%% Intensity - Mu
figure (2)
h = zeros(1,22);
h(1) = plot(Threshold.VA - Beach.VA, Mu.VA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','VA');
hold on
h(2) = plot(Threshold.TX_GV - Beach.TX_GV, Mu.TX_GV, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','TX GV');
h(3) = plot(Threshold.TX_CC - Beach.TX_CC, Mu.TX_CC, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','TX CC');
h(4) = plot(Threshold.OR_SB - Beach.OR_SB, Mu.OR_SB, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','OR SB');
h(5) = plot(Threshold.CA - Beach.CA, Mu.CA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','CA');
h(6) = plot(Threshold.FL - Beach.FL, Mu.FL, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','FL');
h(7) = plot(Threshold.FL_SP - Beach.FL_SP, Mu.FL_SP, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','FL SP');
h(8) = plot(Threshold.AUS_NSW - Beach.AUS_NSW, Mu.AUS_NSW, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','AUS NSW');
h(9) = plot(Threshold.HI - Beach.HI, Mu.HI, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','HI');
h(10) = plot(Threshold.IT - Beach.IT, Mu.IT, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','IT');
h(11) = plot(Threshold.AK - Beach.AK, Mu.AK, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','AK');
h(12) = plot(Threshold.MA - Beach.MA, Mu.MA, 'color', Colors.Gray, 'LineWidth',3,'DisplayName','MA');
h(13) = plot(Threshold.AL_Dauphin - Beach.AL_Dauphin, Mu.AL_Dauphin, 'color', Colors.AL_Dauphin, 'LineWidth',3,'DisplayName','AL Dauphin');
h(14) = plot(Threshold.FL_Shell - Beach.FL_Shell, Mu.FL_Shell, 'color', Colors.FL_Shell, 'LineWidth',3,'DisplayName','FL Shell');
% h(15) = plot(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Mu.GA_LittleTybee, 'color', Colors.GA_LittleTybee, 'LineWidth',3,'DisplayName','GA LittleTybee');
h(15) = plot(Threshold.MA_Plum - Beach.MA_Plum, Mu.MA_Plum, 'color', Colors.MA_Plum, 'LineWidth',3,'DisplayName','MA Plum');
h(16) = plot(Threshold.NC_BaldHead - Beach.NC_BaldHead, Mu.NC_BaldHead, 'color', Colors.NC_BaldHead, 'LineWidth',3,'DisplayName','NC BaldHead');
h(17) = plot(Threshold.NC_Masonboro - Beach.NC_Masonboro, Mu.NC_Masonboro, 'color', Colors.NC_Masonboro, 'LineWidth',3,'DisplayName','NC Masonboro');
h(18) = plot(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Mu.NC_Portsmouth, 'color', Colors.NC_Portsmouth, 'LineWidth',3,'DisplayName','NC Portsmouth');
% h(20) = plot(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Mu.SC_Lighthouse, 'color', Colors.SC_Lighthouse, 'LineWidth',3,'DisplayName','SC Lighthouse');
% h(21) = plot(Threshold.SC_Pockoy - Beach.SC_Pockoy, Mu.SC_Pockoy, 'color', Colors.SC_Pockoy, 'LineWidth',3,'DisplayName','SC Pockoy');
h(19) = plot(Threshold.TX_Follets - Beach.TX_Follets, Mu.TX_Follets, 'color', Colors.TX_Follets, 'LineWidth',3,'DisplayName','TX Follets');
h(20) = plot(Threshold.TX_Hog - Beach.TX_Hog, Mu.TX_Hog, 'color', Colors.TX_Hog, 'LineWidth',3,'DisplayName','TX Hog');
h(21) = plot(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Mu.TX_MatagordaPeninsula, 'color', Colors.TX_MatagordaPeninsula, 'LineWidth',3,'DisplayName','TX MatagordaPeninsula');
% h(22) = plot(Threshold.TX_Padre - Beach.TX_Padre, Mu.TX_Padre, 'color', Colors.TX_Padre, 'LineWidth',3,'DisplayName','TX Padre');
h(22) = plot(Threshold.VA_Assateague - Beach.VA_Assateague, Mu.VA_Assateague, 'color', Colors.VA_Assateague, 'LineWidth',3,'DisplayName','VA Assateague');
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event (m)','FontSize',26);
legend(h(13:22),'NumColumns',2,'Location','northeast','FontSize',24)
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h
