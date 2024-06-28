function res = tcp_test_v3(client, input)

Pwr_Dmd = input(1);
Cap_SOC = input(2);
Bat_SOC = input(3);

Pwr_Dmd = sprintf('%.3f', Pwr_Dmd);
Cap_SOC = sprintf('%.3f', Cap_SOC);
Bat_SOC = sprintf('%.3f', Bat_SOC);

input = Pwr_Dmd + "," + Cap_SOC + "," + Bat_SOC;


% client = tcpclient("192.168.219.100", 11111);

write(client, input, "string")

output = readline(client);
output = str2double(output);

% clear client

res = output;


