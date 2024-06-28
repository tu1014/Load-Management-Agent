
device = serialport("COM6", 115200);

% configureTerminator(device, "CR/LF");
configureTerminator(device, "LF");


Pwr_Dmd = 0.57543;
Cap_SOC = 0.83456;
Bat_SOC = 0.96432;

Pwr_Dmd = sprintf('%.3f', Pwr_Dmd);
Cap_SOC = sprintf('%.3f', Cap_SOC);
Bat_SOC = sprintf('%.3f', Bat_SOC);

input = Pwr_Dmd + "," + Cap_SOC + "," + Bat_SOC;

writeline(device, input);
flush(device);



res = readline(device);
disp(res)


clear device