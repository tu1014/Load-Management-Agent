
load Sim_Results/WLTP_Class_1_REF.mat
load Sim_Results/WLTP_Class_1_SAC.mat
load Sim_Results/WLTP_Class_1_Rule.mat
load Drive-Cycle/WLTP_Class1_Power.mat

% wltp class 1 cap power
subplot(3, 2, 1);
hold on

x = WLTP_Class_1_REF.cap_info.time;
y = WLTP_Class_1_REF.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(5).values;
plot(x, y, 'b')

y = WLTP_Class_1_Rule.cap_info.signals(5).values;
plot(x, y, 'g')

x = WLTP_Class_1.time;
y = WLTP_Class_1.signals.values;
plot(x, y, 'k--')

legend('REF','SAC', 'Rule-based', 'Power Demand')
title('WLTP Class 1 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% wltp class 1 cap soc
subplot(3, 2, 2);
hold on

x = WLTP_Class_1_REF.cap_info.time;
y = WLTP_Class_1_REF.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

y = WLTP_Class_1_Rule.cap_info.signals(2).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 1 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 1 cap discharge cycle
subplot(3, 2, 3);
hold on

x = WLTP_Class_1_REF.cap_info.time;
y = WLTP_Class_1_REF.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_1_Rule.cap_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 1 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 1 bat soc
subplot(3, 2, 4);
hold on

x = WLTP_Class_1_REF.bat_info.time;
y = WLTP_Class_1_REF.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

y = WLTP_Class_1_Rule.bat_info.signals(6).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 1 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% wltp class 1 bat discharge cycle
subplot(3, 2, 5);
hold on

x = WLTP_Class_1_REF.bat_info.time;
y = WLTP_Class_1_REF.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_1_Rule.bat_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 1 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1022])

% wltp class 1 bat soh
subplot(3, 2, 6);
hold on

x = WLTP_Class_1_REF.bat_info.time;
y = WLTP_Class_1_REF.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_1_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_1_Rule.bat_info.signals(8).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 1 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1022])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wltp_class_1_ref_bat_avg = mean(WLTP_Class_1_REF.Bat_Power.signals.values);
wltp_class_1_sac_bat_avg = mean(WLTP_Class_1_SAC.Bat_Power.signals.values);
wltp_class_1_rule_bat_avg = mean(WLTP_Class_1_Rule.Bat_Power.signals.values);





