
client = tcpclient("192.168.219.100", 11111);


Pwr_Dmd = -0.57543;
Cap_SOC = 0.83456;
Bat_SOC = 0.96432;

% Pwr_Dmd = sprintf('%.3f', Pwr_Dmd);
% Cap_SOC = sprintf('%.3f', Cap_SOC);
% Bat_SOC = sprintf('%.3f', Bat_SOC);

% input = Pwr_Dmd + "," + Cap_SOC + "," + Bat_SOC;



write(client, Pwr_Dmd, "double")
% output = readline(client);
% output = str2double(output);




