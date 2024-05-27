 
% clear all
% close all
% clc

Data;

%%% Beach Elevation vs Wave Runup Ref Verified TA

sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];
figure
% errorbar(ftheta(SlopeAnalysis(1)).*WRPmean,B0_03 - TA,BLB0_03,BUB0_03,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
% hold on
% errorbar(ftheta(Slope).*WRPmean,B1 - TA,BLB1,BUB1,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
scatter(ftheta(SlopeAnalysis(1)).*WRPmean,B0_03 - TA,sz,c,'*','LineWidth',2.5)
hold on
scatter(ftheta(Slope).*WRPmean,B1 - TA,sz,c,'x','LineWidth',2.5)
axis([0 2 0 3])
xlabel('Wave runup (m)','FontSize',20)
ylabel('Beach Elevation (m)','FontSize',20)
title('Elevation referred to Verfied tide vs Wave runup','FontSize',26)
% legend('Slope 0.03','Slope varying','NumColumns',2,'Location','northwest','FontSize',24)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)


%%% Beach Elevation vs Wave Runup Ref Astronomical TA

sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];
figure
% errorbar(ftheta(SlopeAnalysis(1)).*WRPmean,B0_03 - AsTA,BLB0_03,BUB0_03,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
% hold on
% errorbar(ftheta(Slope).*WRPmean,B1 - AsTA,BLB1,BUB1,'x', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
scatter(ftheta(SlopeAnalysis(1)).*WRPmean,B0_03 - AsTA,sz,c,'*','LineWidth',2.5)
hold on
scatter(ftheta(Slope).*WRPmean,B1 - AsTA,sz,c,'x','LineWidth',2.5)
axis([0 2 0 3])
xlabel('Wave runup (m)','FontSize',20)
ylabel('Beach Elevation (m)','FontSize',20)
title('Elevation referred to Astronomical tide vs Wave runup','FontSize',26)
% legend('Slope 0.03','Slope varying','NumColumns',2,'Location','northwest','FontSize',24)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

%%% Mean mark vs Wave runup 

sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];
figure
errorbar(ftheta(SlopeAnalysis(1)).*WRPmean,M0_03,MLB0_03,MUB0_03,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
hold on
errorbar(ftheta(Slope).*WRPmean,M1,MLB1,MUB1,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
scatter(ftheta(SlopeAnalysis(1)).*WRPmean,M0_03,sz,c,'*','LineWidth',2.5)
hold on
scatter(ftheta(Slope).*WRPmean,M1,sz,c,'x','LineWidth',2.5)
axis([0 2 0 0.6])
xlabel('Wave runup (m)','FontSize',20)
ylabel('Mean mark (m)','FontSize',20)
title('Mean mark vs Wave runup','FontSize',26)
% legend('Slope 0.03','Slope varying','NumColumns',2,'Location','northwest','FontSize',24)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)


%%% Mean mark vs beach slope 

sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];
figure
errorbar(repmat(ftheta(SlopeAnalysis(1)),12,1),M0_03,MLB0_03,MUB0_03,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
hold on
errorbar(ftheta(Slope),M1,MLB1,MUB1,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
scatter(repmat(ftheta(SlopeAnalysis(1)),12,1),M0_03,sz,c,'*','LineWidth',2.5)
hold on
scatter(ftheta(Slope),M1,sz,c,'x','LineWidth',2.5)
axis([0 0.1 0 0.6])
xlabel('f(Slope)','FontSize',20)
ylabel('Mean mark (m)','FontSize',20)
title('Mean mark vs beach slope parameter','FontSize',26)
% legend('Slope 0.03','Slope varying','NumColumns',2,'Location','northwest','FontSize',24)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','northwest','FontSize',24)
set(gca,'FontSize',22)

%%% Beach elevation comparison 
sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];

figure
errorbar(B1,BDEM,BDemSD,BDemSD,BLB1,BUB1,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
hold on
scatter(B1,BDEM,sz,c,'d','LineWidth',2.5)
axis([0 5 0 7])
hline = refline([1 0]);
hline.Color = 'r';
ylabel('Measured beach elevation (m)','FontSize',20)
xlabel('Reference beach elevation (m)','FontSize',20)
title('Measured beach elevation vs Reference beach elevation','FontSize',26)
set(gca,'FontSize',22)

%%% Wave characteristics

sz = 100;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];

figure
scatter(sqrt(DWL.*SWH),WRPmean,sz,c,'d','LineWidth',2.5)
hold on
axis([0 25 0 25])
hline = refline([1 0]);
hline.Color = 'r';
ylabel('$<\sqrt{H_0 L_0}>$ (m)','Interpreter','latex','FontSize',20)
xlabel('$\sqrt{<H_0> <L_0>}$ (m)','Interpreter','latex','FontSize',20)
title('Wave parameter','FontSize',26)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)


figure
scatter(DWL,SWH,sz,c,'d','LineWidth',2.5)
hold on
errorbar(DWL,SWH,SWHsd,SWHsd,DWLsd,DWLsd,'*', 'color', [0, 0, 0], 'MarkerSize',2,'LineWidth',0.5)
axis([0 600 0 4])
% hline = refline([1 0]);
% hline.Color = 'r';
xlabel('Mean wave length (m)','FontSize',20)
ylabel('Mean wave height (m)','FontSize',20)
title('Hs vs Lo','FontSize',26)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

close all
