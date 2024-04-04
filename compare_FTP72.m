

load Sim_Results/FTP72_REF.mat
load Sim_Results/FTP72_SAC.mat
load Sim_Results/FTP72_Rule.mat
load Drive-Cycle/FTP72_Power.mat

% FTP72 cap power
subplot(3, 2, 1);
hold on

x = FTP72_REF.cap_info.time;
y = FTP72_REF.cap_info.signals(5).values;
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(5).values;
plot(x, y, 'b')

y = FTP72_Rule.cap_info.signals(5).values(1:size(y));
plot(x, y, 'g')

x = FTP72.time;
y = FTP72.signals.values;
plot(x, y, 'k--');

legend('REF','SAC', 'Rule-based', 'Power Demand')
title('FTP72 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1372])

% FTP72 cap soc
subplot(3, 2, 2);
hold on

x = FTP72_REF.cap_info.time;
y = FTP72_REF.cap_info.signals(2).values;
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

y = FTP72_Rule.cap_info.signals(2).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('FTP72 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1372])

% FTP72 cap discharge cycle
subplot(3, 2, 3);
hold on

x = FTP72_REF.cap_info.time;
y = FTP72_REF.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

y = FTP72_Rule.cap_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('FTP72 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1372])

% FTP72 bat soc
subplot(3, 2, 4);
hold on

x = FTP72_REF.bat_info.time;
y = FTP72_REF.bat_info.signals(6).values;
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

y = FTP72_Rule.bat_info.signals(6).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('FTP72 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1372])

% FTP72 bat discharge cycle
subplot(3, 2, 5);
hold on

x = FTP72_REF.bat_info.time;
y = FTP72_REF.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

y = FTP72_Rule.bat_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('FTP72 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1372])

% FTP72 bat soh
subplot(3, 2, 6);
hold on

x = FTP72_REF.bat_info.time;
y = FTP72_REF.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

y = FTP72_Rule.bat_info.signals(8).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('FTP72 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1372])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ftp72_ref_bat_avg = mean(FTP72_REF.Bat_Power.signals.values);
ftp72_sac_bat_avg = mean(FTP72_SAC.Bat_Power.signals.values);
ftp72_rule_bat_avg = mean(FTP72_Rule.Bat_Power.signals.values);





