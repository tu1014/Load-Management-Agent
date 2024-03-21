
load Sim_Results/WLTP_Class_2_REF.mat
load Sim_Results/WLTP_Class_2_SAC.mat
load Sim_Results/WLTP_Class_2_Rule.mat
load Drive-Cycle/WLTP_Class2_Power.mat

% wltp class 1 cap power
subplot(3, 2, 1);
hold on

x = WLTP_Class_2_REF.cap_info.time;
y = WLTP_Class_2_REF.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(5).values;
plot(x, y, 'b')

x = WLTP_Class_2.time;
y = WLTP_Class_2.signals.values;
plot(x, y, 'k:');

legend('REF','SAC', 'Power Demand')
title('WLTP Class 2 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% wltp class 2 cap soc
subplot(3, 2, 2);
hold on

x = WLTP_Class_2_REF.cap_info.time;
y = WLTP_Class_2_REF.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

legend('REF','SAC')
title('WLTP Class 2 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 2 cap discharge cycle
subplot(3, 2, 3);
hold on

x = WLTP_Class_2_REF.cap_info.time;
y = WLTP_Class_2_REF.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('REF','SAC')
title('WLTP Class 2 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 2 bat soc
subplot(3, 2, 4);
hold on

x = WLTP_Class_2_REF.bat_info.time;
y = WLTP_Class_2_REF.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

legend('REF','SAC')
title('WLTP Class 2 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 2 bat discharge cycle
subplot(3, 2, 5);
hold on

x = WLTP_Class_2_REF.bat_info.time;
y = WLTP_Class_2_REF.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

legend('REF','SAC')
title('WLTP Class 2 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 2 bat soh
subplot(3, 2, 6);
hold on

x = WLTP_Class_2_REF.bat_info.time;
y = WLTP_Class_2_REF.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_2_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

legend('REF','SAC')
title('WLTP Class 2 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1022])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wltp_class_2_ref_bat_avg = mean(WLTP_Class_2_REF.Bat_Power.signals.values);
wltp_class_2_sac_bat_avg = mean(WLTP_Class_2_SAC.Bat_Power.signals.values);





