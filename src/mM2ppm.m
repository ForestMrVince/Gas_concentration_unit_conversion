function [ppm_value] = mM2ppm(mM_value, T_C, P_env)
%mM2ppm mM��ppm��ת������, mM��mmol/L
%   ����: 
%       mM_value: ��Ҫת���ĵ�λΪmM��Ũ��ֵ
%       T_C: �����϶�Ϊ��λ���¶�ֵ
%       P_env: ��kPaΪ��λ�Ļ���ѹǿֵ
%   ���: 
%       ppm_value: ���¶�T_C�������µ���ppmΪ��λ��Ũ��ֵ

% ������������ PV = nRT
T_K = 273.15;% = 0��C
% atm = 101.325;% kPa = kN/m2
R = 8.314; % J/(mol*K) = (kg*m2/s2)/(mol*K) = (N*m)/(mol*K)

T = T_C + T_K;
P = (mM_value * R * T) / 1000;% ��λ: kPa

ppm_value = (P/P_env)*1000000;

end

