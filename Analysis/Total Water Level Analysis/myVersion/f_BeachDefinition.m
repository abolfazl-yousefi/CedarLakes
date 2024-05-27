%%% Beach elevation definition
% Saving struct of beach elevation values
Beach.AL_Dauphin = (1.02 + Ref.AL_Dauphin);
Beach.FL_Shell = (1.33 + Ref.FL_Shell);
% Beach.GA_LittleTybee = (1.9+Ref.GA_LittleTybee);
Beach.MA_Plum = (2.77 + Ref.MA_Plum);
Beach.NC_BaldHead = (2.05 + Ref.NC_BaldHead);
Beach.NC_Masonboro = (1.9 + Ref.NC_Masonboro);
Beach.NC_Portsmouth = (1.6 + Ref.NC_Portsmouth);
% Beach.SC_Lighthouse = (2.35 + Ref.SC_Lighthouse);
% Beach.SC_Pockoy = (2.53 + Ref.SC_Pockoy);
Beach.TX_Follets = (0.88 + Ref.TX_Follets);
Beach.TX_Hog = (0.99 + Ref.TX_Hog);
Beach.TX_MatagordaPeninsula = (0.88 + Ref.TX_MatagordaPeninsula);
% Beach.TX_Padre = (1.05 + Ref.TX_Padre);
Beach.VA_Assateague = (2.2 + Ref.VA_Assateague);
Beach.VA = (1.7 + Ref.VA);
Beach.TX_GV = (0.88 + Ref.TX_GV);
Beach.TX_CC = (1.05 + Ref.TX_CC);
Beach.OR_SB = (3.68 + Ref.OR_SB);
Beach.CA = (2.59 + Ref.CA);
Beach.FL = (1.33 + Ref.FL);
Beach.FL_SP = (1.05 + Ref.FL_SP);
Beach.AUS_NSW = (2.8 + Ref.AUS_NSW);
Beach.HI = (2.48 + Ref.HI);
Beach.IT = (3.26 + Ref.IT);
Beach.AK = (3.55 + Ref.AK);
Beach.MA = (2.77 + Ref.MA);
Beach.TX_CedarLakes = (2.77 + Ref.TX_CedarLakes);


save('BeachElevations.mat','Beach')