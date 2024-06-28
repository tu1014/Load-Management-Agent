
disp('=======Env Configuration Start!=======')

setHESSParam
disp('Load HESS Param ...')

disp('set RL env ...')

% load Trained_Agent/DQN_Agent.mat;
load Trained_Agent/SAC/SAC_Agent_128.mat;
load Trained_Agent/REF/REF_Agent_117.mat;

% setREFEnv
setSACEnv
% setDQNEnv

client = tcpclient("192.168.219.100", 11111);

disp('=====Env Configuration Finished!=====')