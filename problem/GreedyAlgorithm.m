function G = GreedyAlgorithm(Cn,Wn,W)
%% ̰���㷨�����ݼ۸��ܶȹ����ʼ��
% Cn���۸�
% Wn������
% W�� ������������
D = Cn./Wn;
G = zeros(1,length(Cn));
while 1
    [~,base] = max(D);
    D(base) = 0;
    if sum(Wn(G==1)) + Wn(base) < W+0.00015
        G(base) = 1;
    else
        break
    end
end
end