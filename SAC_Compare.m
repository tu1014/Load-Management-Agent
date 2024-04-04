
load Sim_Results/FTP72_SAC.mat
load Sim_Results/FTP72_REF.mat
load Sim_Results/FTP72_Rule.mat

load Sim_Results/WLTP_Class_1_SAC.mat
load Sim_Results/WLTP_Class_1_REF.mat
load Sim_Results/WLTP_Class_1_Rule.mat

load Sim_Results/WLTP_Class_2_SAC.mat
load Sim_Results/WLTP_Class_2_REF.mat
load Sim_Results/WLTP_Class_2_Rule.mat

load Sim_Results/WLTP_Class_3_SAC.mat
load Sim_Results/WLTP_Class_3_REF.mat
load Sim_Results/WLTP_Class_3_Rule.mat

load Drive-Cycle/WLTP_Class3_Power.mat
load Drive-Cycle/WLTP_Class2_Power.mat
load Drive-Cycle/WLTP_Class1_Power.mat
load Drive-Cycle/FTP72_Power.mat

% FTP72 SC Power 
subplot(4, 2, 1);
hold on

x = FTP72_SAC.cap_info.time;
y = FTP72_SAC.cap_info.signals(5).values;
plot(x, y, 'r-.')

y = FTP72_REF.cap_info.signals(5).values;
plot(x, y, 'g-.')

y = FTP72_Rule.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1372])

% FTP72 SC SOC
subplot(4, 2, 2);
hold on

x = FTP72_SAC.cap_info.time;
y = FTP72_SAC.cap_info.signals(2).values;
plot(x, y, 'r')

y = FTP72_REF.cap_info.signals(2).values;
plot(x, y, 'g')

y = FTP72_Rule.cap_info.signals(2).values;
plot(x, y, 'b')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1372])

% WLTP Class 1 SC Power 
subplot(4, 2, 3);
hold on

x = WLTP_Class_1_SAC.cap_info.time;
y = WLTP_Class_1_SAC.cap_info.signals(5).values;
plot(x, y, 'r-.')

y = WLTP_Class_1_REF.cap_info.signals(5).values;
plot(x, y, 'g-.')

y = WLTP_Class_1_Rule.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1022])

% WLTP Class 1 SC SOC
subplot(4, 2, 4);
hold on

x = WLTP_Class_1_SAC.cap_info.time;
y = WLTP_Class_1_SAC.cap_info.signals(2).values;
plot(x, y, 'r')

y = WLTP_Class_1_REF.cap_info.signals(2).values;
plot(x, y, 'g')

y = WLTP_Class_1_Rule.cap_info.signals(2).values;
plot(x, y, 'b')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1022])

% WLTP Class 2 SC Power 
subplot(4, 2, 5);
hold on

x = WLTP_Class_2_SAC.cap_info.time;
y = WLTP_Class_2_SAC.cap_info.signals(5).values;
plot(x, y, 'r-.')

y = WLTP_Class_2_REF.cap_info.signals(5).values;
plot(x, y, 'g-.')

y = WLTP_Class_2_Rule.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1477])

% WLTP Class 2 SC SOC
subplot(4, 2, 6);
hold on

x = WLTP_Class_2_SAC.cap_info.time;
y = WLTP_Class_2_SAC.cap_info.signals(2).values;
plot(x, y, 'r')

y = WLTP_Class_2_REF.cap_info.signals(2).values;
plot(x, y, 'g')

y = WLTP_Class_2_Rule.cap_info.signals(2).values;
plot(x, y, 'b')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1477])

% WLTP Class 3 SC Power 
subplot(4, 2, 7);
hold on

x = WLTP_Class_3_SAC.cap_info.time;
y = WLTP_Class_3_SAC.cap_info.signals(5).values;
plot(x, y, 'r-.')

y = WLTP_Class_3_REF.cap_info.signals(5).values;
plot(x, y, 'g-.')

y = WLTP_Class_3_Rule.cap_info.signals(5).values;
plot(x, y, 'b-.')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('power (W)')
xlim([0 1800])

% WLTP Class 2 SC SOC
subplot(4, 2, 8);
hold on

x = WLTP_Class_3_SAC.cap_info.time;
y = WLTP_Class_3_SAC.cap_info.signals(2).values;
plot(x, y, 'r')

y = WLTP_Class_3_REF.cap_info.signals(2).values;
plot(x, y, 'g')

y = WLTP_Class_3_Rule.cap_info.signals(2).values;
plot(x, y, 'b')

legend('SAC','REF', 'Rule')
xlabel('time (sec)')
ylabel('SOC (%)')
xlim([0 1800])







