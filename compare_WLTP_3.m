
load Sim_Results/WLTP_Class_3_REF.mat
load Sim_Results/WLTP_Class_3_SAC.mat
load Sim_Results/WLTP_Class_3_Rule.mat
load Drive-Cycle/WLTP_Class3_Power.mat

% wltp class 1 cap power
subplot(3, 2, 1);
hold on

x = WLTP_Class_3_REF.cap_info.time;
y = WLTP_Class_3_REF.cap_info.signals(5).values;
plot(x, y, 'r');

y = WLTP_Class_3_SAC.cap_info.signals(5).values;
plot(x, y, 'b')

y = WLTP_Class_3_Rule.cap_info.signals(5).values;
plot(x, y, 'g')

x = WLTP_Class_3.time;
y = WLTP_Class_3.signals.values;
plot(x, y, 'k--')

legend('REF','SAC', 'Rule-based', 'Power Demand')
title('WLTP Class 3 Capacitor Power')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1800])

% wltp class 2 cap soc
subplot(3, 2, 2);
hold on

x = WLTP_Class_3_REF.cap_info.time;
y = WLTP_Class_3_REF.cap_info.signals(2).values;
plot(x, y, 'r');

y = WLTP_Class_3_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

y = WLTP_Class_3_Rule.cap_info.signals(2).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 3 Capacitor SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1800])

% wltp class 2 cap discharge cycle
subplot(3, 2, 3);
hold on

x = WLTP_Class_3_REF.cap_info.time;
y = WLTP_Class_3_REF.cap_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_3_SAC.cap_info.signals(7).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_3_Rule.cap_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 3 Capacitor Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1800])

% wltp class 2 bat soc
subplot(3, 2, 4);
hold on

x = WLTP_Class_3_REF.bat_info.time;
y = WLTP_Class_3_REF.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_3_SAC.bat_info.signals(6).values;
plot(x, y, 'b')

y = WLTP_Class_3_Rule.bat_info.signals(6).values;
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 3 battery soc')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1800])

% wltp class 2 bat discharge cycle
subplot(3, 2, 5);
hold on

x = WLTP_Class_3_REF.bat_info.time;
y = WLTP_Class_3_REF.bat_info.signals(7).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_3_SAC.bat_info.signals(7).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_3_Rule.bat_info.signals(7).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 3 battery Discharge Cycle')
xlabel('time (sec)')
ylabel('Discharge Cycle')
xlim([0 1800])

% wltp class 2 bat soh
subplot(3, 2, 6);
hold on

x = WLTP_Class_3_REF.bat_info.time;
y = WLTP_Class_3_REF.bat_info.signals(8).values(:,:);
plot(x, y, 'r');

y = WLTP_Class_3_SAC.bat_info.signals(8).values(:,:);
plot(x, y, 'b')

y = WLTP_Class_3_Rule.bat_info.signals(8).values(:,:);
plot(x, y, 'g')

legend('REF','SAC', 'Rule-based')
title('WLTP Class 3 battery SOH')
xlabel('time (sec)')
ylabel('SOH (%)')
xlim([0 1800])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wltp_class_3_ref_bat_avg = mean(WLTP_Class_3_REF.Bat_Power.signals.values);
wltp_class_3_sac_bat_avg = mean(WLTP_Class_3_SAC.Bat_Power.signals.values);
wltp_class_3_rule_bat_avg = mean(WLTP_Class_3_Rule.Bat_Power.signals.values);





