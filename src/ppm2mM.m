function [mM_value] = ppm2mM(ppm_value, T_C, P_env)
%ppm2mM ppm向mM的转换函数, mM即mmol/L
%   输入: 
%       ppm_value: 需要转换的在温度T_C的条件下的以ppm为单位的浓度值
%       T_C: 以摄氏度为单位的温度值
%       P_env: 以kPa为单位的环境压强值
%   输出: 
%       mM_value: 单位为mM的浓度值

% 克拉伯龙方程 PV = nRT
T_K = 273.15;% = 0°C
% atm = 101.325;% kPa = kN/m2
R = 8.314; % J/(mol*K) = (kg*m2/s2)/(mol*K) = (N*m)/(mol*K)

P = ppm_value * P_env / 1000000;

T = T_C + T_K;
mM_value = P * 1000 / (R * T);% 单位: kPa

end

