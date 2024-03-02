
load Sim_Results/WLTP_Class_1_DQN.mat
load Sim_Results/WLTP_Class_1_SAC.mat
load Sim_Results/WLTP_Class_2_DQN.mat
load Sim_Results/WLTP_Class_2_SAC.mat
load Sim_Results/FTP72_DQN.mat
load Sim_Results/FTP72_SAC.mat

% FTP72 cap power
subplot(3, 2, 1);
hold on

x = FTP72_DQN.cap_info.time;
y = FTP72_DQN.cap_info.signals(5).values;
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% FTP72 cap soc
subplot(3, 2, 2);
hold on

x = FTP72_DQN.cap_info.time;
y = FTP72_DQN.cap_info.signals(2).values;
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% FTP72 cap discharge cycle
subplot(3, 2, 3);
hold on

x = FTP72_DQN.cap_info.time;
y = FTP72_DQN.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% FTP72 bat soc
subplot(3, 2, 4);
hold on

x = FTP72_DQN.bat_info.time;
y = FTP72_DQN.bat_info.signals(6).values;
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% FTP72 bat discharge cycle
subplot(3, 2, 5);
hold on

x = FTP72_DQN.bat_info.time;
y = FTP72_DQN.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% FTP72 bat soh
subplot(3, 2, 6);
hold on

x = FTP72_DQN.bat_info.time;
y = FTP72_DQN.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = FTP72_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1022])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wltp_class_1_dqn_bat_avg = mean(WLTP_Class_1_DQN.Bat_Power.signals.values);
wltp_class_1_sac_bat_avg = mean(WLTP_Class_1_SAC.Bat_Power.signals.values);
wltp_class_2_dqn_bat_avg = mean(WLTP_Class_2_DQN.Bat_Power.signals.values);
wltp_class_2_sac_bat_avg = mean(WLTP_Class_2_SAC.Bat_Power.signals.values);
ftp72_dqn_bat_avg = mean(FTP72_DQN.Bat_Power.signals.values);
ftp72_sac_bat_avg = mean(FTP72_SAC.Bat_Power.signals.values);





