function [mM_value] = ppm2mM(ppm_value, T_C, P_env)
%ppm2mM ppm��mM��ת������, mM��mmol/L
%   ����: 
%       ppm_value: ��Ҫת�������¶�T_C�������µ���ppmΪ��λ��Ũ��ֵ
%       T_C: �����϶�Ϊ��λ���¶�ֵ
%       P_env: ��kPaΪ��λ�Ļ���ѹǿֵ
%   ���: 
%       mM_value: ��λΪmM��Ũ��ֵ

% ������������ PV = nRT
T_K = 273.15;% = 0��C
% atm = 101.325;% kPa = kN/m2
R = 8.314; % J/(mol*K) = (kg*m2/s2)/(mol*K) = (N*m)/(mol*K)

P = ppm_value * P_env / 1000000;

T = T_C + T_K;
mM_value = P * 1000 / (R * T);% ��λ: kPa

end

