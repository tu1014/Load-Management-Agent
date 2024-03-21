

load WLTP_Class_1_SAC_194.mat
load WLTP_Class_1_SAC_285.mat

% FTP72 cap power
subplot(3, 2, 1);
hold on

x = WLTP_Class_1_SAC_194.cap_info.time;
y = WLTP_Class_1_SAC_194.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.cap_info.signals(5).values;
plot(x, y, 'b')

legend('194','285')
title('FTP72 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% FTP72 cap soc
subplot(3, 2, 2);
hold on

x = WLTP_Class_1_SAC_194.cap_info.time;
y = WLTP_Class_1_SAC_194.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.cap_info.signals(2).values;
plot(x, y, 'b')

legend('194','285')
title('FTP72 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% FTP72 cap discharge cycle
subplot(3, 2, 3);
hold on

x = WLTP_Class_1_SAC_194.cap_info.time;
y = WLTP_Class_1_SAC_194.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('194','285')
title('FTP72 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% FTP72 bat soc
subplot(3, 2, 4);
hold on

x = WLTP_Class_1_SAC_194.bat_info.time;
y = WLTP_Class_1_SAC_194.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.bat_info.signals(6).values;
plot(x, y, 'b')

legend('194','285')
title('FTP72 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% FTP72 bat discharge cycle
subplot(3, 2, 5);
hold on

x = WLTP_Class_1_SAC_194.bat_info.time;
y = WLTP_Class_1_SAC_194.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('194','285')
title('FTP72 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% FTP72 bat soh
subplot(3, 2, 6);
hold on

x = WLTP_Class_1_SAC_194.bat_info.time;
y = WLTP_Class_1_SAC_194.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC_285.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

legend('194','285')
title('FTP72 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1022])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ftp72_sac_194_bat_avg = mean(WLTP_Class_1_SAC_194.Bat_Power.signals.values);
ftp72_sac_285_bat_avg = mean(WLTP_Class_1_SAC_285.Bat_Power.signals.values);





