
load Sim_Results/WLTP_Class_3_SAC.mat
load Drive-Cycle/WLTP_Class3_Power.mat

% wltp class 1 cap power
subplot(2, 1, 1);
hold on

x = WLTP_Class_3_SAC.bat_info.time;
y = WLTP_Class_3_SAC.bat_info.signals(3).values;
plot(x, y, 'r');

y = WLTP_Class_3_SAC.cap_info.signals(5).values;
plot(x, y, 'b')

x = WLTP_Class_3.time;
y = WLTP_Class_3.signals.values;
plot(x, y, 'k:')

legend('Bat Power','SC Power', 'Power Demand')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1800])

% wltp class 2 cap soc
subplot(2, 1, 2);
hold on

x = WLTP_Class_3_SAC.bat_info.time;
y = WLTP_Class_3_SAC.bat_info.signals(6).values;
plot(x, y, 'r');

y = WLTP_Class_3_SAC.cap_info.signals(2).values;
plot(x, y, 'b')

legend('Bat SOC','SC SOC')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1800])







