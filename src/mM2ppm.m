function [ppm_value] = mM2ppm(mM_value, T_C, P_env)
%mM2ppm mM向ppm的转换函数, mM即mmol/L
%   输入: 
%       mM_value: 需要转换的单位为mM的浓度值
%       T_C: 以摄氏度为单位的温度值
%       P_env: 以kPa为单位的环境压强值
%   输出: 
%       ppm_value: 在温度T_C的条件下的以ppm为单位的浓度值

% 克拉伯龙方程 PV = nRT
T_K = 273.15;% = 0°C
% atm = 101.325;% kPa = kN/m2
R = 8.314; % J/(mol*K) = (kg*m2/s2)/(mol*K) = (N*m)/(mol*K)

T = T_C + T_K;
P = (mM_value * R * T) / 1000;% 单位: kPa

ppm_value = (P/P_env)*1000000;

end

