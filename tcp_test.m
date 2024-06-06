function res = tcp_test(Pwr_Dmd, Cap_SOC, Bat_SOC)


Pwr_Dmd = sprintf('%.3f', Pwr_Dmd);
Cap_SOC = sprintf('%.3f', Cap_SOC);
Bat_SOC = sprintf('%.3f', Bat_SOC);

input = Pwr_Dmd + "," + Cap_SOC + "," + Bat_SOC;


client = tcpclient("192.168.0.12", 12345);

write(client, input, "string")

output = readline(client);output = str2double(output);

clear client

res = output;


