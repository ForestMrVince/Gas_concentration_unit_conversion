function [ppm_value] = ugmL2ppm(ugmL_value, T_C, P_env, RMM)
%ugmL2ppm ug/mL��ppm��ת������
%   ����: 
%       ugmL_value: ��Ҫת������ug/mLΪ��λ��Ũ��ֵ
%       T_C: �����϶�Ϊ��λ���¶�ֵ
%       P_env: ��kPaΪ��λ�Ļ���ѹǿֵ
%       RMM: �ӷ����������Է�������
%   ���: 
%       ppm_value: ���¶�T_C�������µ���ppmΪ��λ��Ũ��ֵ
%   ������: �ļ�"mM2ppm.m"

gL_value = ugmL_value / 1000;% ��λ��ug/mLת��Ϊg/L
nL_value = gL_value / RMM;% ��λ��g/Lת��Ϊmol/L
mM_value = nL_value * 1000;% ��λ��mol/Lת��ΪmM, ��mmol/L

ppm_value = mM2ppm(mM_value, T_C, P_env);

end

