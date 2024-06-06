
device = serialport("COM6", 115200);

% configureTerminator(device, "CR/LF");
configureTerminator(device, "LF");


Pwr_Dmd = 0.57543;
Cap_SOC = 0.83456;
Bat_SOC = 0.96432;

Pwr_Dmd = int8(Pwr_Dmd*100);
Cap_SOC = int8(Cap_SOC*100);
Bat_SOC = int8(Bat_SOC*100);

input = [ int2str(Pwr_Dmd) ',' int2str(Cap_SOC) ',' int2str(Bat_SOC)];
input_b = uint8(input);

writeline(device, input);
flush(device);


res = readline(device);
disp(res)


clear device