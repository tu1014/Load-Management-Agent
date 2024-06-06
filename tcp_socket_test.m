
client = tcpclient("192.168.0.12", 12345);


Pwr_Dmd = -0.57543;
Cap_SOC = 0.83456;
Bat_SOC = 0.96432;

Pwr_Dmd = sprintf('%.3f', Pwr_Dmd);
Cap_SOC = sprintf('%.3f', Cap_SOC);
Bat_SOC = sprintf('%.3f', Bat_SOC);

input = Pwr_Dmd + "," + Cap_SOC + "," + Bat_SOC;



write(client, input, "string")
output = readline(client);
output = str2double(output);