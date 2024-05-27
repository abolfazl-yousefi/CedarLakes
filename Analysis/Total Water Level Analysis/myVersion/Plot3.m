
% % Exceedance probability plot Interarrivals
sz = 60;


% % One representative threshold for each location

%%% VA
VarNames = VA_HS.Properties.VariableNames(15:27);
Legend = rmmissing(VA_HS.HS_Threshold) - BeachElevVA;
Legend = round(Legend,1);
LamVA = LambdaVA(find(Legend==0));
VarNamesVA = VarNames((find(Legend==0)));
clear VarNames Legend
%%% TX_GV
VarNames = TX_GV_CS.Properties.VariableNames(15:27);
Legend = rmmissing(TX_GV_CS.CS_Threshold) - BeachElevTX_GV;
Legend = round(Legend,1);
LamTX_GV = LambdaTX_GV(find(Legend==0));
VarNamesTX_GV = VarNames((find(Legend==0)));
clear VarNames Legend
%%% TX_CC
VarNames = TX_CC_CS.Properties.VariableNames(15:26);
Legend = rmmissing(TX_CC_CS.CS_Threshold) - BeachElevTX_CC;
Legend = round(Legend,1);
LamTX_CC = LambdaTX_CC(find(Legend==0));
VarNamesTX_CC = VarNames((find(Legend==0)));
clear VarNames Legend
%%% OR
VarNames = OR_SB_HS.Properties.VariableNames(15:35);
Legend = rmmissing(OR_SB_HS.HS_Threshold) - BeachElevOR_SB;
Legend = round(Legend,1);
LamOR = LambdaOR_SB(find(Legend== -0.1));
VarNamesOR_SB = VarNames((find(Legend== -0.1)));
clear VarNames Legend
%%% CA 
VarNames = CA_HS.Properties.VariableNames(15:27);
Legend = rmmissing(CA_HS.HS_Threshold) - BeachElevCA;
Legend = round(Legend,1);
LamCA = LambdaCA(find(Legend==0));
VarNamesCA = VarNames((find(Legend==0)));
clear VarNames Legend
%%% FL
VarNames = FL_CS.Properties.VariableNames(15:25);
Legend = rmmissing(FL_CS.CS_Threshold) - BeachElevFL;
Legend = round(Legend,1);
LamFL = LambdaFL(find(Legend== -0.1));
VarNamesFL = VarNames((find(Legend==-0.1)));
clear VarNames Legend
%%% FL_SP
VarNames = FL_SP_CS.Properties.VariableNames(15:24);
Legend = rmmissing(FL_SP_CS.CS_Threshold) - BeachElevFL_SP;
Legend = round(Legend,1);
LamFL_SP = LambdaFL_SP(find(Legend==0));
VarNamesFL_SP = VarNames((find(Legend==0)));
clear VarNames Legend
%%% AUS NSW 
VarNames = AUS_NSW_CS.Properties.VariableNames(15:26);
Legend = rmmissing(AUS_NSW_CS.CS_Threshold) - BeachElevAUS_NSW;
Legend = round(Legend,1);
LamAUS = LambdaAUS_NSW(find(Legend==0));
VarNamesAUS_NSW = VarNames((find(Legend==0)));
clear VarNames Legend
%%% HI 
VarNames = HI_CS.Properties.VariableNames(15:30);
Legend = rmmissing(HI_CS.CS_Threshold) - BeachElevHI;
Legend = round(Legend,1);
LamHI = LambdaHI(find(Legend==0)); 
VarNamesHI = VarNames((find(Legend==0)));
clear VarNames Legend
%%% IT 
VarNames = IT_CS.Properties.VariableNames(15:24);
Legend = rmmissing(IT_CS.CS_Threshold) - BeachElevIT;
Legend = round(Legend,1);
LamIT = LambdaIT(find(Legend== -0.1));
VarNamesIT = VarNames((find(Legend== -0.1)));
clear VarNames Legend
%%% AK 
VarNames = AK_HS.Properties.VariableNames(15:35);
Legend = rmmissing(AK_HS.HS_Threshold) - BeachElevAK;
Legend = round(Legend,1);
LamAK = LambdaAK(find(Legend==0));
VarNamesAK = VarNames((find(Legend==0)));
clear VarNames Legend
%%% MA 
VarNames = MA_CS.Properties.VariableNames(15:30);
Legend = rmmissing(MA_CS.CS_Threshold) - BeachElevMA;
Legend = round(Legend,1);
LamMA = LambdaMA(find(Legend== -0.1));
VarNamesMA = VarNames((find(Legend==-0.1)));
clear VarNames Legend

figure
x = strtrim(char(VarNamesVA(1)));
var = rmmissing(VA_HS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor',[0, 0.4470, 0.7410])
hold on
clear x var ExProb qi 
x = strtrim(char(VarNamesTX_GV(1)));
var = rmmissing(TX_GV_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0.8500, 0.3250, 0.0980])
clear x var ExProb qi 
x = strtrim(char(VarNamesTX_CC(1)));
var = rmmissing(TX_CC_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0, 0.5, 0])
clear x var ExProb qi 
x = strtrim(char(VarNamesOR_SB(1)));
var = rmmissing(OR_SB_HS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0.9290, 0.6940, 0.1250])
clear x var ExProb qi 
x = strtrim(char(VarNamesCA(1)));
var = rmmissing(CA_HS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0.4940, 0.1840, 0.5560])
clear x var ExProb qi 
x = strtrim(char(VarNamesFL(1)));
var = rmmissing(FL_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0.4660, 0.6740, 0.1880])
clear x var ExProb qi 
x = strtrim(char(VarNamesFL_SP(1)));
var = rmmissing(FL_SP_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0.6350, 0.0780, 0.1840])
clear x var ExProb qi 
x = strtrim(char(VarNamesAUS_NSW(1)));
var = rmmissing(AUS_NSW_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0,0,1])
clear x var ExProb qi 
x = strtrim(char(VarNamesHI(1)));
var = rmmissing(HI_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0,0,0])
clear x var ExProb qi 
x = strtrim(char(VarNamesIT(1)));
var = rmmissing(IT_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [1,0,1])
clear x var ExProb qi  
x = strtrim(char(VarNamesAK(1)));
var = rmmissing(AK_HS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [1,1,0])
clear x var ExProb qi 
x = strtrim(char(VarNamesMA(1)));
var = rmmissing(MA_CS.(x)); var = var-2;
var = var(var <= mean(var)*log(10));
var =var/mean(var);
[ExProb,qi] = ecdf(var,'function','survivor');
scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', [0,1,1])
clear x var ExProb qi 
% x = strtrim(char(VarNamesOR_SB(1)));
% var = rmmissing(OR_SB_HS.(x)); var = var-2;
% var = var(var <= mean(var)*log(10));var =var/mean(var);
% [~,qi,ExProbUb,ExProbLb] = ecdf(var,'function','survivor','alpha',0.05,'bounds','on');
% plot(qi,ExProbUb,'-','color', 'r')
% plot(qi,ExProbLb,'-','color', 'r')
% clear x var ExProb qi 

x = (0:0.01:4);
y = exp(-x);
plot(x,y,'--','Color','k','LineWidth',1.5)
axis([0 3.6 0.03 1])
box on
% xlabel("Normalized Inter-arrival ($\lambda$ $\Delta$t)",'Interpreter','latex','FontSize',20)
% ylabel("Complementary CDF ($1 - CDF$)",'Interpreter','latex','FontSize',20)
% title("Complementary cumulative distribution function of inter-arrivals",'Interpreter','latex','FontSize',26)
legend('VA','TX - GV','TX - PI','OR','CA','FL - CC','FL - SP','Australia','HI','Italy','AK','MA','NumColumns',2,'Location','southwest','FontSize',10)
legend("boxoff")
set(gca,'FontSize',13,'YScale','log')
set(gcf,"Units","Centimeters","Position",[0,0,21,12],"PaperUnits","Centimeters","PaperSize",[21,12])
% set(gcf,"Units","Centimeters","Position",[0,0,12,12],"PaperUnits","Centimeters","PaperSize",[12,12])


