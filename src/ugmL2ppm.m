function [ppm_value] = ugmL2ppm(ugmL_value, T_C, P_env, RMM)
%ugmL2ppm ug/mL向ppm的转换函数
%   输入: 
%       ugmL_value: 需要转换的以ug/mL为单位的浓度值
%       T_C: 以摄氏度为单位的温度值
%       P_env: 以kPa为单位的环境压强值
%       RMM: 挥发性气体的相对分子质量
%   输出: 
%       ppm_value: 在温度T_C的条件下的以ppm为单位的浓度值
%   依赖项: 文件"mM2ppm.m"

gL_value = ugmL_value / 1000;% 单位由ug/mL转换为g/L
nL_value = gL_value / RMM;% 单位由g/L转换为mol/L
mM_value = nL_value * 1000;% 单位由mol/L转换为mM, 即mmol/L

ppm_value = mM2ppm(mM_value, T_C, P_env);

end

