function Gn = RepairSolution(Cn,Wn,Gn,W)
%% ���ռ�ֵ�ܶȶԽ�����޸�/�Ľ�
% Cn���۸�
% Wn������
% Gn�����룺��ǰ�⣬������޸�/�Ľ����
% W�� ������������
rho = Cn./Wn;
sigma = Cn./Wn;
if sum(Wn(Gn==1)) > W
    rho(Gn==0) = Inf;
    while 1
        [~,base] = min(rho);
        rho(base) = Inf;
        if sum(Wn(Gn==1)) > W
            Gn(base) = 0;
        else
            break
        end
    end
end
if sum(Wn(Gn==1)) < W
    sigma(Gn==1) = 0;
    while 1
        [~,base] = max(sigma);
        sigma(base) = 0;
        if sum(Wn(Gn==1)) + Wn(base) < W
            Gn(base) = 1;
        else
            break
        end
    end
end
end