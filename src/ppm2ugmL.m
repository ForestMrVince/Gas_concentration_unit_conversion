function [ugmL_value] = ppm2ugmL(ppm_value, T_C, P_env, RMM)
%ppm2ugmL ppm向ug/mL的转换函数
%   输入: 
%       ppm_value: 需要转换的在温度T_C的条件下的以ppm为单位的浓度值
%       T_C: 以摄氏度为单位的温度值
%       P_env: 以kPa为单位的环境压强值
%       RMM: 挥发性气体的相对分子质量
%   输出: 
%       ugmL_value: 以ug/mL为单位的浓度值
%   依赖项: 文件"ppm2mM.m"

mM_value = ppm2mM(ppm_value, T_C, P_env);

nL_value = mM_value / 1000;% 单位由mM即mmol/L转换为mol/L
gL_value = nL_value * RMM;% 单位由mol/L转换为g/L
ugmL_value = gL_value * 1000;% 单位由g/L转换为ug/mL

end

