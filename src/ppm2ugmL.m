function [ugmL_value] = ppm2ugmL(ppm_value, T_C, P_env, RMM)
%ppm2ugmL ppm��ug/mL��ת������
%   ����: 
%       ppm_value: ��Ҫת�������¶�T_C�������µ���ppmΪ��λ��Ũ��ֵ
%       T_C: �����϶�Ϊ��λ���¶�ֵ
%       P_env: ��kPaΪ��λ�Ļ���ѹǿֵ
%       RMM: �ӷ����������Է�������
%   ���: 
%       ugmL_value: ��ug/mLΪ��λ��Ũ��ֵ
%   ������: �ļ�"ppm2mM.m"

mM_value = ppm2mM(ppm_value, T_C, P_env);

nL_value = mM_value / 1000;% ��λ��mM��mmol/Lת��Ϊmol/L
gL_value = nL_value * RMM;% ��λ��mol/Lת��Ϊg/L
ugmL_value = gL_value * 1000;% ��λ��g/Lת��Ϊug/mL

end

