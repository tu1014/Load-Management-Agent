
device = serialport("COM6", 115200);
configureTerminator(device, "CR/LF");

Pwr_Dmd = 0.5;
Cap_SOC = 0.8;
Bat_SOC = 0.9;

Pwr_Dmd = int8(Pwr_Dmd*100);
Cap_SOC = int8(Cap_SOC*100);
Bat_SOC = int8(Bat_SOC*100);

input = [ int2str(Pwr_Dmd) ',' int2str(Cap_SOC) ',' int2str(Bat_SOC)];
input_b = uint8(input);

% writeline(device, input);

writeline(device, int2str(Pwr_Dmd));
writeline(device, int2str(Cap_SOC));
writeline(device, int2str(Bat_SOC));
flush(device);

% res = readline(device);
% res = str2double(res);

% disp(res)

clear device