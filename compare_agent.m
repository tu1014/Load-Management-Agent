
load Sim_Results/WLTP_Class_1_DQN.mat
load Sim_Results/WLTP_Class_1_SAC.mat
load Sim_Results/WLTP_Class_2_DQN.mat
load Sim_Results/WLTP_Class_2_SAC.mat
load Sim_Results/FTP72_DQN.mat
load Sim_Results/FTP72_SAC.mat

% wltp class 1 cap power
subplot(6, 2, 1);
hold on

x = WLTP_Class_1_DQN.cap_info.time;
y = WLTP_Class_1_DQN.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% wltp class 1 cap soc
subplot(6, 2, 2);
hold on

x = WLTP_Class_1_DQN.cap_info.time;
y = WLTP_Class_1_DQN.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 1 cap discharge cycle
subplot(6, 2, 3);
hold on

x = WLTP_Class_1_DQN.cap_info.time;
y = WLTP_Class_1_DQN.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 1 bat soc
subplot(6, 2, 4);
hold on

x = WLTP_Class_1_DQN.bat_info.time;
y = WLTP_Class_1_DQN.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 1 bat discharge cycle
subplot(6, 2, 5);
hold on

x = WLTP_Class_1_DQN.bat_info.time;
y = WLTP_Class_1_DQN.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 1 bat soh
subplot(6, 2, 6);
hold on

x = WLTP_Class_1_DQN.bat_info.time;
y = WLTP_Class_1_DQN.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 1 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1022])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% wltp class 2 cap power
subplot(6, 2, 7);
hold on

x = WLTP_Class_2_DQN.cap_info.time;
y = WLTP_Class_2_DQN.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('DQN','SAC')
title('WLTP Class 2 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1477])

% wltp class 2 cap soc
subplot(6, 2, 8);
hold on

x = WLTP_Class_2_DQN.cap_info.time;
y = WLTP_Class_2_DQN.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 2 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1477])

% wltp class 2 cap discharge cycle
subplot(6, 2, 9);
hold on

x = WLTP_Class_2_DQN.cap_info.time;
y = WLTP_Class_2_DQN.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 2 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1477])

% wltp class 2 bat soc
subplot(6, 2, 10);
hold on

x = WLTP_Class_2_DQN.bat_info.time;
y = WLTP_Class_2_DQN.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 2 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1477])

% wltp class 1 bat discharge cycle
subplot(6, 2, 11);
hold on

x = WLTP_Class_2_DQN.bat_info.time;
y = WLTP_Class_2_DQN.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 2 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1477])

% wltp class 1 bat soh
subplot(6, 2, 12);
hold on

x = WLTP_Class_2_DQN.bat_info.time;
y = WLTP_Class_2_DQN.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

legend('DQN','SAC')
title('WLTP Class 2 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1477])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wltp_class_1_dqn_bat_avg = mean(WLTP_Class_1_DQN.Bat_Power.signals.values);
wltp_class_1_sac_bat_avg = mean(WLTP_Class_1_SAC.Bat_Power.signals.values);
wltp_class_2_dqn_bat_avg = mean(WLTP_Class_2_DQN.Bat_Power.signals.values);
wltp_class_2_sac_bat_avg = mean(WLTP_Class_2_SAC.Bat_Power.signals.values);






