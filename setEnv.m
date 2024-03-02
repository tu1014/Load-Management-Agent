
disp('=======Env Configuration Start!=======')

setHESSParam
disp('Load HESS Param ...')

disp('set RL env ...')

load Trained_Agent/DQN_Agent.mat;
load Trained_Agent/SAC_Agent.mat;

setREFEnv
% setSACEnv
% setDQNEnv

disp('=====Env Configuration Finished!=====')
