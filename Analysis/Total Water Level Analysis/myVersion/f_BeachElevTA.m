
%%% Beach Elevation vs Tidal amplitude
figure
h = zeros(1,22);
h(1) = errorbar(TA.VA, Beach.VA, BeachLb.VA, BeachUb.VA, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','VA');
hold on
h(2) = errorbar(TA.TX_GV, Beach.TX_GV, BeachLb.TX_GV, BeachUb.TX_GV, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX GV');
h(3) = errorbar(TA.TX_CC, Beach.TX_CC, BeachLb.TX_CC, BeachUb.TX_CC, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX CC');
h(4) = errorbar(TA.OR_SB, Beach.OR_SB, BeachLb.OR_SB, BeachUb.OR_SB, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','OR SB');
h(5) = errorbar(TA.CA, Beach.CA, BeachLb.CA, BeachUb.CA, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','CA');
h(6) = errorbar(TA.FL, Beach.FL, BeachLb.FL, BeachUb.FL, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','FL');
h(7) = errorbar(TA.FL_SP, Beach.FL_SP, BeachLb.FL_SP, BeachUb.FL_SP, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','FL SP');
h(8) = errorbar(TA.AUS_NSW, Beach.AUS_NSW, BeachLb.AUS_NSW, BeachUb.AUS_NSW, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','AUS NSW');
h(9) = errorbar(TA.HI, Beach.HI, BeachLb.HI, BeachUb.HI, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','HI');
h(10) = errorbar(TA.IT, Beach.IT, BeachLb.IT, BeachUb.IT, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','IT');
h(11) = errorbar(TA.AK, Beach.AK, BeachLb.AK, BeachUb.AK, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','AK');
h(12) = errorbar(TA.MA, Beach.MA, BeachLb.MA, BeachUb.MA, '*', 'color', Colors.Gray, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','MA');
h(13) = errorbar(TA.AL_Dauphin, Beach.AL_Dauphin, BeachLb.AL_Dauphin, BeachUb.AL_Dauphin, '*', 'color', Colors.AL_Dauphin, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','AL Dauphin');
h(14) = errorbar(TA.FL_Shell, Beach.FL_Shell, BeachLb.FL_Shell, BeachUb.FL_Shell, '*', 'color', Colors.FL_Shell, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','FL Shell');
% h(15) = errorbar(TA.GA_LittleTybee, Beach.GA_LittleTybee, BeachLb.GA_LittleTybee, BeachUb.GA_LittleTybee, '*', 'color', Colors.GA_LittleTybee, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','GA LittleTybee');
h(15) = errorbar(TA.MA_Plum, Beach.MA_Plum, BeachLb.MA_Plum, BeachUb.MA_Plum, '*', 'color', Colors.MA_Plum, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','MA Plum');
h(16) = errorbar(TA.NC_BaldHead, Beach.NC_BaldHead, BeachLb.NC_BaldHead, BeachUb.NC_BaldHead, '*', 'color', Colors.NC_BaldHead, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','NC BaldHead');
h(17) = errorbar(TA.NC_Masonboro, Beach.NC_Masonboro, BeachLb.NC_Masonboro, BeachUb.NC_Masonboro, '*', 'color', Colors.NC_Masonboro, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','NC Masonboro');
h(18) = errorbar(TA.NC_Portsmouth, Beach.NC_Portsmouth, BeachLb.NC_Portsmouth, BeachUb.NC_Portsmouth, '*', 'color', Colors.NC_Portsmouth, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','NC Portsmouth');
% h(20) = errorbar(TA.SC_Lighthouse, Beach.SC_Lighthouse, BeachLb.SC_Lighthouse, BeachUb.SC_Lighthouse, '*', 'color', Colors.SC_Lighthouse, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','SC Lighthouse');
% h(21) = errorbar(TA.SC_Pockoy, Beach.SC_Pockoy, BeachLb.SC_Pockoy, BeachUb.SC_Pockoy, '*', 'color', [0.4660, 0.6740, 0.1880], 'MarkerSize',20,'LineWidth',2.5,'DisplayName','SC Pockoy');
h(19) = errorbar(TA.TX_Follets, Beach.TX_Follets, BeachLb.TX_Follets, BeachUb.TX_Follets, '*', 'color', Colors.TX_Follets, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX Follets');
h(20) = errorbar(TA.TX_Hog, Beach.TX_Hog, BeachLb.TX_Hog, BeachUb.TX_Hog, '*', 'color', Colors.TX_Hog, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX Hog');
h(21) = errorbar(TA.TX_MatagordaPeninsula, Beach.TX_MatagordaPeninsula, BeachLb.TX_MatagordaPeninsula, BeachUb.TX_MatagordaPeninsula, '*', 'color', [0.8500, 0.3250, 0.0980], 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(TA.TX_Padre, Beach.TX_Padre, BeachLb.TX_Padre, BeachUb.TX_Padre, '*', 'color', Colors.TX_Padre, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','TX Padre');
h(22) = errorbar(TA.VA_Assateague, Beach.VA_Assateague, BeachLb.VA_Assateague, BeachUb.VA_Assateague, '*', 'color', Colors.VA_Assateague, 'MarkerSize',20,'LineWidth',2.5,'DisplayName','VA Assateague');
% axis([0 2 0 5])
ylabel('Reference beach elevation $Z_r$ (m)','Interpreter','latex','FontSize',20)
xlabel('Tidal Amplitude $A_{t}$ (m)','Interpreter','latex','FontSize',20)
% title('Beach Elevation vs Tidal Amplitude','FontSize',26)
legend(h(13:22),'NumColumns',2,'Location','southeast','FontSize',22)
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h