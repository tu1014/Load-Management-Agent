
device = serialport("COM6", 115200);
configureTerminator(device, "CR");

Pwr_Dmd = 0.5;
Cap_SOC = 0.8;
Bat_SOC = 0.9;

Pwr_Dmd = int8(Pwr_Dmd*100);
Cap_SOC = int8(Cap_SOC*100);
Bat_SOC = int8(Bat_SOC*100);

writeline(device, int2str(Pwr_dmd));
writeline(device, int2str(Pwr_dmd));
writeline(device, int2str(Pwr_dmd));

res = readline(device);
res = str2double(res);

disp(res)

clear device