%%% VA

VarNames = VA_HS.Properties.VariableNames(28:40);
y = rmmissing(VA_HS.HS_Threshold) - BeachElevVA;
y = round(y,1);

x2 = [];xl = [];xu =[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(VA_HS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_VA(i)/std(var)];
    xu = [xu Mu_Ub_VA(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Virginia")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdVA = x2; MustdVAUb = xu; MustdVALb = xl;
ThrVA  = y;
clear y x2 xl xu

%%% TX GV

VarNames = TX_GV_CS.Properties.VariableNames(28:40);
y = rmmissing(TX_GV_CS.CS_Threshold) - BeachElevTX_GV;
y = round(y,1);

x2 = [];xl=[];xu =[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(TX_GV_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_TX_GV(i)/std(var)];
    xu = [xu Mu_Ub_TX_GV(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Texas Galveston")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdTX_GV = x2; MustdTX_GVUb =xu; MustdTX_GVLb = xl;
ThrTX_GV  = y;
clear y x2 xl xu

%%% TX CC

VarNames = TX_CC_CS.Properties.VariableNames(27:38);
y = rmmissing(TX_CC_CS.CS_Threshold) - BeachElevTX_CC;
y = round(y,1);

x2 = [];xl =[];xu=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(TX_CC_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl =[xl Mu_Lb_TX_CC(i)/std(var)];
    xu = [xu Mu_Ub_TX_CC(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Texas Corpus Christi")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdTX_CC = x2; MustdTX_CCUb=xu; MustdTX_CCLb=xl;
ThrTX_CC  = y;
clear y x2 xl xu

%%% OR SB

VarNames = OR_SB_HS.Properties.VariableNames(36:56);
y = rmmissing(OR_SB_HS.HS_Threshold) - BeachElevOR_SB;
y = round(y,1);

x2 = []; xu =[];xl = [];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(OR_SB_HS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xu = [xu Mu_Ub_OR_SB(i)/std(var)];
    xl = [xl Mu_Lb_OR_SB(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Oregon")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdOR = x2; MustdORUb = xu; MustdORLb = xl;
ThrOR  = y;
clear y x2 xl xu

%%% CA

VarNames = CA_HS.Properties.VariableNames(28:40);
y = rmmissing(CA_HS.HS_Threshold) - BeachElevCA;
y = round(y,1);

x2 = [];xl =[]; xu=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(CA_HS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_CA(i)/std(var)];
    xu = [xu Mu_Ub_CA(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - California")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdCA = x2; MustdCAUb = xu; MustdCALb = xl;
ThrCA  = y;
clear y x2

%%% FL

VarNames = FL_CS.Properties.VariableNames(26:36);
y = rmmissing(FL_CS.CS_Threshold) - BeachElevFL;
y = round(y,1);

x2 = []; xu=[]; xl =[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(FL_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_FL(i)/std(var)];
    xu = [xu Mu_Ub_FL(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Florida")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdFL = x2; MustdFLUb = xu; MustdFLLb = xl;
ThrFL  = y;
clear y x2 xl xu

%%% FL SP

VarNames = FL_SP_CS.Properties.VariableNames(25:34);
y = rmmissing(FL_SP_CS.CS_Threshold) - BeachElevFL_SP;
y = round(y,1);

x2 = [];xl =[]; xu =[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(FL_SP_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl =[xl Mu_Lb_FL_SP(i)/std(var)];
    xu = [xu Mu_Ub_FL_SP(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Florida St.Petersburg")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdFL_SP = x2; MustdFL_SPUb=xu; MustdFL_SP_Lb =xl;
ThrFL_SP  = y;
clear y x2 xl xu

%%% AUS NSW

VarNames = AUS_NSW_CS.Properties.VariableNames(27:38);
y = rmmissing(AUS_NSW_CS.CS_Threshold) - BeachElevAUS_NSW;
y = round(y,1);

x2 = []; xl=[]; xu=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(AUS_NSW_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_AUS_NSW(i)/std(var)];
    xu = [xu Mu_Ub_AUS_NSW(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Australia")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdAUS = x2; MustdAUSUb =xu; MustdAUSLb =xl;
ThrAUS  = y;
clear y x2 xu xl

%%% HI

VarNames = HI_CS.Properties.VariableNames(31:46);
y = rmmissing(HI_CS.CS_Threshold) - BeachElevHI;
y = round(y,1);

x2 = []; xu=[];xl=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(HI_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xu = [xu Mu_Ub_HI(i)/std(var)];
    xl = [xl Mu_Lb_HI(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Hawaii")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdHI = x2; MustdHIUb =xu; MustdHILb =xl;
ThrHI = y;
clear y x2 xl xu

%%% IT

VarNames = IT_CS.Properties.VariableNames(25:34);
y = rmmissing(IT_CS.CS_Threshold) - BeachElevIT;
y = round(y,1);

x2 = []; xu=[]; xl=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(IT_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_IT(i)/std(var)];
    xu =[xu Mu_Ub_IT(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Italy")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdIT = x2; MustdITUb =xu; MustdITLb = xl;
ThrIT  = y;
clear y x2 xl xu

%%% AK

VarNames = AK_HS.Properties.VariableNames(39:62);
y = rmmissing(AK_HS.HS_Threshold) - BeachElevAK;
y = round(y,1);

x2 = []; xl=[]; xu=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(AK_HS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xu = [xu Mu_Ub_AK(i)/std(var)];
    xl = [xl Mu_Lb_AK(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Alaska")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdAK = x2; MustdAKUb = xu; MustdAKLb= xl;
ThrAK  = y;
clear y x2 xu xl

%%% MA

VarNames = MA_CS.Properties.VariableNames(32:48);
y = rmmissing(MA_CS.CS_Threshold) - BeachElevMA;
y = round(y,1);

x2 = []; xl=[]; xu=[];
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(MA_CS.(x)); 
    x2 = [x2 mean(var)/std(var)];
    xl = [xl Mu_Lb_MA(i)/std(var)];
    xu = [xu Mu_Ub_MA(i)/std(var)];
    clear x var 
    
end

% figure
% plot(y,x2,'*','MarkerSize',20)
% hold on
% title("Marks - Boston")
% xlabel("Threshold (m)")
% ylabel("mean/std")
MustdMA = x2; MustdMAUb =xu; MustdMALb = xl;
ThrMA  = y;
clear y x2 xl xu


