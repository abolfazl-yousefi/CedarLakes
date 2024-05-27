
lwd = 1.5;
sz = [20 22];

f_UploadingLocationData;

%%% No Clustering Return Period

figure
ff_retperplot(AL_Dauphin_CS.TWL_DailyMax, Colors.AL_Dauphin,Names.AL_Dauphin,lwd);
hold on
ff_retperplot(FL_Shell_CS.TWL_DailyMax, Colors.FL_Shell, Names.FL_Shell, lwd);
ff_retperplot(GA_LittleTybee_CS.TWL_DailyMax, Colors.GA_LittleTybee, Names.GA_LittleTybee, lwd)
ff_retperplot(MA_Plum_CS.TWL_DailyMax, Colors.MA_Plum, Names.MA_Plum, lwd)
ff_retperplot(NC_BaldHead_CS.TWL_DailyMax, Colors.NC_BaldHead, Names.NC_BaldHead, lwd)
ff_retperplot(NC_Masonboro_CS.TWL_DailyMax, Colors.NC_Masonboro, Names.NC_Masonboro, lwd)
ff_retperplot(NC_Portsmouth_CS.TWL_DailyMax, Colors.NC_Portsmouth, Names.NC_Portsmouth, lwd)
ff_retperplot(SC_Lighthouse_CS.TWL_DailyMax, Colors.SC_Lighthouse, Names.SC_Lighthouse, lwd)
ff_retperplot(SC_Pockoy_CS.TWL_DailyMax, Colors.SC_Pockoy, Names.SC_Pockoy, lwd)
ff_retperplot(TX_Follets_CS.TWL_DailyMax, Colors.TX_Follets, Names.TX_Follets, lwd)
ff_retperplot(TX_Hog_CS.TWL_DailyMax, Colors.TX_Hog, Names.TX_Hog, lwd)
ff_retperplot(TX_MatagordaPeninsula_CS.TWL_DailyMax, Colors.TX_MatagordaPeninsula, Names.TX_MatagordaPeninsula, lwd)
ff_retperplot(VA_Assateague_CS.TWL_DailyMax, Colors.VA_Assateague, Names.VA_Assateague, lwd)
x = 0.1:1:3650;
y = 0.3*log(x);
plot(x,y,'--','Color','k');
legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
xlabel('Return Period (yr)','FontSize',sz(1))
ylabel('Intensity (m)','FontSize',sz(1))
set(gca,'XScale','log', 'FontSize', sz(2))
set(gcf, 'Position', get(0, 'Screensize'));


figure
ff_retperplot(VA_CS.TWL_DailyMax, Colors.VA, Names.VA,lwd);
hold on
ff_retperplot(TX_GV_CS.TWL_DailyMax, Colors.TX_GV, Names.TX_GV, lwd);
ff_retperplot(TX_CC_CS.TWL_DailyMax, Colors.TX_CC, Names.TX_CC, lwd)
ff_retperplot(OR_SB_CS.TWL_DailyMax, Colors.OR_SB, Names.OR_SB, lwd)
ff_retperplot(CA_CS.TWL_DailyMax, Colors.CA, Names.CA, lwd)
ff_retperplot(FL_CS.TWL_DailyMax, Colors.FL, Names.FL, lwd)
ff_retperplot(FL_SP_CS.TWL_DailyMax, Colors.FL_SP, Names.FL_SP, lwd)
ff_retperplot(AUS_NSW_CS.TWL_DailyMax, Colors.AUS_NSW, Names.AUS_NSW, lwd)
ff_retperplot(HI_CS.TWL_DailyMax, Colors.HI, Names.HI, lwd)
ff_retperplot(IT_CS.TWL_DailyMax, Colors.IT, Names.IT, lwd)
ff_retperplot(AK_CS.TWL_DailyMax, Colors.AK, Names.AK, lwd)
ff_retperplot(MA_CS.TWL_DailyMax, Colors.MA, Names.MA, lwd)
legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
xlabel('Return Period (yr)','FontSize',sz(1))
ylabel('Intensity (m)','FontSize',sz(1))
set(gca,'XScale','log', 'FontSize', sz(2))
set(gcf, 'Position', get(0, 'Screensize'));


%%% Return Period with Clustering


figure
ff_retperclustplot(AL_Dauphin_CS, 'CS', 'MaxMarks', Beach.AL_Dauphin, Colors.AL_Dauphin, Names.AL_Dauphin,lwd);
hold on
ff_retperclustplot(FL_Shell_CS, 'CS', 'MaxMarks', Beach.FL_Shell, Colors.FL_Shell, Names.FL_Shell,lwd);
ff_retperclustplot(GA_LittleTybee_CS, 'CS', 'MaxMarks', Beach.GA_LittleTybee, Colors.GA_LittleTybee, Names.GA_LittleTybee,lwd);
ff_retperclustplot(MA_Plum_CS, 'CS', 'MaxMarks', Beach.MA_Plum, Colors.MA_Plum, Names.MA_Plum,lwd);
ff_retperclustplot(NC_BaldHead_CS, 'CS', 'MaxMarks', Beach.NC_BaldHead, Colors.NC_BaldHead, Names.NC_BaldHead,lwd);
ff_retperclustplot(NC_Masonboro_CS, 'CS', 'MaxMarks', Beach.NC_Masonboro, Colors.NC_Masonboro, Names.NC_Masonboro,lwd);
ff_retperclustplot(NC_Portsmouth_CS, 'CS', 'MaxMarks', Beach.NC_Portsmouth, Colors.NC_Portsmouth, Names.NC_Portsmouth,lwd);
ff_retperclustplot(SC_Lighthouse_CS, 'CS', 'MaxMarks', Beach.SC_Lighthouse, Colors.SC_Lighthouse, Names.SC_Lighthouse,lwd);
ff_retperclustplot(SC_Pockoy_CS, 'CS', 'MaxMarks', Beach.SC_Pockoy, Colors.SC_Pockoy, Names.SC_Pockoy,lwd);
ff_retperclustplot(TX_Follets_CS, 'CS', 'MaxMarks', Beach.TX_Follets, Colors.TX_Follets, Names.TX_Follets,lwd);
ff_retperclustplot(TX_Hog_CS, 'CS', 'MaxMarks', Beach.TX_Hog, Colors.TX_Hog, Names.TX_Hog,lwd);
ff_retperclustplot(TX_MatagordaPeninsula_CS, 'CS', 'MaxMarks', Beach.TX_MatagordaPeninsula, Colors.TX_MatagordaPeninsula, Names.TX_MatagordaPeninsula,lwd);
ff_retperclustplot(VA_Assateague_CS, 'CS', 'MaxMarks', Beach.VA_Assateague, Colors.VA_Assateague, Names.VA_Assateague,lwd);
legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
xlabel('Return Period','FontSize',sz(1))
ylabel('Intensity (m)','FontSize',sz(1))
set(gca,'XScale','log', 'FontSize', sz(2))
set(gcf, 'Position', get(0, 'Screensize'));


figure
ff_retperclustplot(VA_CS, 'CS', 'MaxMarks', Beach.VA, Colors.VA, Names.VA,lwd);
hold on
ff_retperclustplot(TX_GV_CS, 'CS', 'MaxMarks', Beach.TX_GV, Colors.TX_GV, Names.TX_GV,lwd);
ff_retperclustplot(TX_CC_CS, 'CS', 'MaxMarks', Beach.TX_CC, Colors.TX_CC, Names.TX_CC,lwd);
ff_retperclustplot(OR_SB_CS, 'CS', 'MaxMarks', Beach.OR_SB, Colors.OR_SB, Names.OR_SB,lwd);
ff_retperclustplot(CA_CS, 'CS', 'MaxMarks', Beach.CA, Colors.CA, Names.CA,lwd);
ff_retperclustplot(FL_CS, 'CS', 'MaxMarks', Beach.FL, Colors.FL, Names.FL,lwd);
ff_retperclustplot(FL_SP_CS, 'CS', 'MaxMarks', Beach.FL_SP, Colors.FL_SP, Names.FL_SP,lwd);
ff_retperclustplot(AUS_NSW_CS, 'CS', 'MaxMarks', Beach.AUS_NSW, Colors.AUS_NSW, Names.AUS_NSW,lwd);
ff_retperclustplot(HI_CS, 'CS', 'MaxMarks', Beach.HI, Colors.HI, Names.HI,lwd);
ff_retperclustplot(IT_CS, 'CS', 'MaxMarks', Beach.IT, Colors.IT, Names.IT,lwd);
ff_retperclustplot(AK_CS, 'CS', 'MaxMarks', Beach.AK, Colors.AK, Names.AK,lwd);
ff_retperclustplot(MA_CS, 'CS', 'MaxMarks', Beach.MA, Colors.MA, Names.MA,lwd);
legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
xlabel('Return Period','FontSize',sz(1))
ylabel('Intensity (m)','FontSize',sz(1))
set(gca,'XScale','log', 'FontSize', sz(2))
set(gcf, 'Position', get(0, 'Screensize'));


%%% Return Period with Clustering and Confidence Interval
figure
ff_retperclustboundsplot(VA_CS, 'CS', 'MaxMarks', Beach.VA, Colors.VA, Names.VA,lwd);
hold on
ff_retperclustplot(TX_GV_CS, 'CS', 'MaxMarks', Beach.TX_GV, Colors.TX_GV, Names.TX_GV,lwd);


% 
% 
% ff_retperplot(FL_Shell_CS.TWL_DailyMax, Param,  Colors.FL_Shell, Names.FL_Shell, lwd);
% ff_retperplot(GA_LittleTybee_CS.TWL_DailyMax, Param,  Colors.GA_LittleTybee, Names.GA_LittleTybee, lwd)
% ff_retperplot(MA_Plum_CS.TWL_DailyMax, Param,  Colors.MA_Plum, Names.MA_Plum, lwd)
% ff_retperplot(NC_BaldHead_CS.TWL_DailyMax, Param,  Colors.NC_BaldHead, Names.NC_BaldHead, lwd)
% ff_retperplot(NC_Masonboro_CS.TWL_DailyMax, Param,  Colors.NC_Masonboro, Names.NC_Masonboro, lwd)
% ff_retperplot(NC_Portsmouth_CS.TWL_DailyMax, Param,  Colors.NC_Portsmouth, Names.NC_Portsmouth, lwd)
% ff_retperplot(SC_Lighthouse_CS.TWL_DailyMax, Param,  Colors.SC_Lighthouse, Names.SC_Lighthouse, lwd)
% ff_retperplot(SC_Pockoy_CS.TWL_DailyMax, Param,  Colors.SC_Pockoy, Names.SC_Pockoy, lwd)
% ff_retperplot(TX_Follets_CS.TWL_DailyMax, Param,  Colors.TX_Follets, Names.TX_Follets, lwd)
% ff_retperplot(TX_Hog_CS.TWL_DailyMax, Param,  Colors.TX_Hog, Names.TX_Hog, lwd)
% ff_retperplot(TX_MatagordaPeninsula_CS.TWL_DailyMax, Param,  Colors.TX_MatagordaPeninsula, Names.TX_MatagordaPeninsula, lwd)
% ff_retperplot(VA_Assateague_HS.TWL_DailyMax, Param,  Colors.VA_Assateague, Names.VA_Assateague, lwd)
% legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
% xlabel('Return Period (yr)','FontSize',sz(1))
% ylabel('Intensity (m)','FontSize',sz(1))
% set(gca,'XScale','log', 'FontSize', sz(2))
% set(gcf, 'Position', get(0, 'Screensize'));
% 
% 
% figure
% ff_retperplot(VA_HS.TWL_DailyMax, Param, Colors.VA, Names.VA,lwd);
% hold on
% ff_retperplot(TX_GV_CS.TWL_DailyMax, Param, Colors.TX_GV, Names.TX_GV, lwd);
% ff_retperplot(TX_CC_CS.TWL_DailyMax, Param, Colors.TX_CC, Names.TX_CC, lwd)
% ff_retperplot(OR_SB_HS.TWL_DailyMax, Param, Colors.OR_SB, Names.OR_SB, lwd)
% ff_retperplot(CA_HS.TWL_DailyMax, Param, Colors.CA, Names.CA, lwd)
% ff_retperplot(FL_CS.TWL_DailyMax, Param, Colors.FL, Names.FL, lwd)
% ff_retperplot(FL_SP_CS.TWL_DailyMax, Param, Colors.FL_SP, Names.FL_SP, lwd)
% ff_retperplot(AUS_NSW_CS.TWL_DailyMax, Param, Colors.AUS_NSW, Names.AUS_NSW, lwd)
% ff_retperplot(HI_CS.TWL_DailyMax, Param, Colors.HI, Names.HI, lwd)
% ff_retperplot(IT_CS.TWL_DailyMax, Param, Colors.IT, Names.IT, lwd)
% ff_retperplot(AK_HS.TWL_DailyMax, Param, Colors.AK, Names.AK, lwd)
% ff_retperplot(MA_CS.TWL_DailyMax, Param, Colors.MA, Names.MA, lwd)
% legend('NumColumns',2,'Location','southeast','FontSize',sz(1))
% xlabel('Return Period (yr)','FontSize',sz(1))
% ylabel('Intensity (m)','FontSize',sz(1))
% set(gca,'XScale','log', 'FontSize', sz(2))
% set(gcf, 'Position', get(0, 'Screensize'));
% 
% clear Param
% 
% 







% 
% 
% 
% [ExProb.AL_Dauphin,q.AL_Dauphin] = ecdf(AL_Dauphin_CS.TWL_DailyMax,'function','survivor');
% 
% 
% RetPer = 1./ExProb;
% figure
% plot(RetPer,q)
% set(gca,'XScale','log', 'FontSize', 30)
% 
% Data = load('VA_CS.mat'); Data = Data.Data;
% TWL = rmmissing(Data.TWL_DailyMax);
% Marks = rmmissing(Data.CS_MaxMarks_Slope0_02_Thr1_5);
% Marks = [Marks; zeros(length(TWL)-length(Marks),1); ];
% [ExProb,q,LB,UB] = ecdf(Marks,'function','survivor','Alpha',0.05,'Bounds','on');
% 
% % %%% Plotting the empirical survivor function with its confidence interval
% % figure
% % plot(q,ExProb,'LineWidth',2)
% % hold on
% % plot(q,LB,'r','LineWidth',1.5)
% % plot(q,UB,'r','LineWidth',1.5)
% % set(gca,'YScale','log')
% 
% LB = 1./LB/365; 
% UB = 1./UB/365;
% 
% % x0 = linspace(min(Marks),max(Marks),1000);
% % LB_hat = csloess(q,LB,x0,2/3,1);
% % UB_hat = csloess(q,UB,x0,2/3,1);
% 
% RetPer = 1./ExProb/365;
% Mu = Data.CS_Mu(2);
% Lambda = Data.CS_Lambda(2)*365;
% % Events return period
% t = 0:0.001:600;
% s = Mu*log(Lambda*t);
% % Dune growth
% G = 0.5;        %m/yr -- growth rate transformed to m/day
% Nmax = 2;     %m -- maximum growth
% Tf = Nmax/G;
% Nt = Nmax * (1 - exp(-t/Tf));
% 
% figure
% plot(t,s,'--k','LineWidth',2)
% hold on
% plot(RetPer,q,'.','MarkerSize',60,'Color','r')
% plot(LB,q,'Color','r','LineWidth',2)
% plot(UB,q,'Color','r','LineWidth',2)
% % plot(RetPer,q,'.','MarkerSize',60,'Color','r')
% plot(t,Nt,'k','LineWidth',2)
% axis([0.05,600,0,2.5])
% xticks([1e-2 1e-1 1e0 1e1 1e2 1e3 1e4])
% yticks([0 0.5 1 1.5 2 2.5])
% % set(gca,'XScale','log', 'FontSize', 28, 'YTickLabel',[1.5,2,2.5,3,3.5,4])
% set(gca,'XScale','log', 'FontSize', 30)
% set(gcf, 'PaperUnits', 'centimeters', 'Position',  [100, 100, 850, 800])
% 
% % lim = axis(gca);
% ax = gca;
% 
% v = [2.5 0; 2.5 2.5; 4 2.5; 4 0;
%     4 0; 4 2.5; 6 2.5; 6 0;
%     30 0; 30 2.5; 55 2.5; 55 0;
%     55 0; 55 2.5; 80 2.5; 80 0];
% f = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
% C = [[1 0 0]; [1 0 0]; [1 1 1]; [1 1 1];
%     [1 1 1]; [1 1 1]; [0 1 0]; [0 1 0];
%     [0 1 0]; [0 1 0]; [1 1 1]; [1 1 1];
%     [1 1 1]; [1 1 1]; [1 0 0]; [1 0 0]];
% 
% 
% lim = axis(ax);
% % xdata = [lim(1) lim(2) lim(2) lim(1)];
% % ydata = [lim(3) lim(3) lim(4) lim(4)];
% % xdata1 = [lim(1) 3.5 3.5 lim(1)];
% xdata1 = [lim(1) 2.5 2.5 lim(1)];
% xdata2 = [6 30 30 6];
% xdata3 = [80 lim(2) lim(2) 80];
% ydata = [lim(3) lim(3) lim(4) lim(4)];
% 
% % ydata = [0 0 2.5 2.5];
% % cdata(1,1,:) = bottomcolor;
% % cdata(1,2,:) = bottomcolor;
% % cdata(1,3,:) = topcolor;
% % cdata(1,4,:) = topcolor;
% 
% pp = patch('Faces', f, 'Vertices', v, 'FaceVertexCData', C, 'FaceColor','interp','EdgeColor','none')
% 
% 
% p = patch(xdata1,ydata,'r','Parent',ax);
% p1 = patch(xdata2,ydata,'g','Parent',ax);
% p2 = patch(xdata3,ydata,'r','Parent',ax);
% % set(p,'CData',cdata, ...
% %     'FaceColor','interp', ...
% %     'EdgeColor','none');
% set(p,'EdgeColor','none');
% set(p1,'EdgeColor','none');
% set(p2,'EdgeColor','none');
% 
% 
% uistack(p,'bottom') % Put gradient underneath everything else
% uistack(p1,'bottom') % Put gradient underneath everything else
% uistack(p2,'bottom') % Put gradient underneath everything else
% uistack(pp,'bottom') % Put gradient underneath everything else
% 
% 
% 
% topcolor = [1 0 0];    % red
% bottomcolor = [0 1 0]; % green
% % [p, p1, p2, pp] = addgradient(gca, topcolor,bottomcolor);  % Red-green gradient to bottom plot
% set(p,'FaceAlpha',.15);  % Make transparent
% set(p1,'FaceAlpha',.15);  % Make transparent
% set(p2,'FaceAlpha',.15);  % Make transparent
% set(pp,'FaceAlpha',.15);  % Make transparent
% 
% 
% 
