sim_case = 4;
Proposed = out;
REF = out;
RULE = out;
time = out.pwr_compair.time;

SAC_Pwr = Proposed.pwr_compair.signals(1).values(:,2);
REF_Pwr = REF.pwr_compair.signals(1).values(:,2);
RULE_Pwr = RULE.pwr_compair.signals(1).values(:,2);
WLTP1_Pwr = out.pwr_compair.signals(1).values(:,1);

 
WLTP1_Pwr_Dist = [time WLTP1_Pwr SAC_Pwr REF_Pwr(1:172742, :) RULE_Pwr];
csvwrite('csv/wltp class 1/pwr_dist.csv', WLTP1_Pwr_Dist)

SAC_SOC = Proposed.pwr_compair.signals(2).values(:,2);
REF_Pwr = REF.pwr_compair.signals(2).values(:,2);
RULE_Pwr = RULE.pwr_compair.signals(2).values(:,2);
 
WLTP1_SOC = [time SAC_SOC(1:172742,:) REF_Pwr(1:172742,:) RULE_Pwr];
csvwrite('csv/wltp class 1/soc.csv', WLTP1_SOC);





sim_case = 2;
Proposed = out;
RULE = out;
REF = out;

time = RULE.pwr_compair.time;
SAC_Pwr = Proposed.pwr_compair.signals(1).values(:,2);
REF_Pwr = REF.pwr_compair.signals(1).values(:,2);
RULE_Pwr = RULE.pwr_compair.signals(1).values(:,2);
FTP72_Pwr = Proposed.pwr_compair.signals(1).values(:,1);
 
FTP72_Pwr_Dist = [time FTP72_Pwr(1:230466,:) SAC_Pwr(1:230466,:) REF_Pwr(1:230466,:) RULE_Pwr];
csvwrite('csv/ftp72/pwr_dist.csv', FTP72_Pwr_Dist)

SAC_SOC = Proposed.pwr_compair.signals(2).values(:,2);
REF_SOC = REF.pwr_compair.signals(2).values(:,2);
RULE_SOC = RULE.pwr_compair.signals(2).values(:,2);
 
FTP72_SOC = [time(1:230466,:) SAC_SOC(1:230466,:) REF_SOC(1:230466,:) RULE_SOC];
csvwrite('csv/ftp72/soc.csv', FTP72_SOC);