function aff = affinity(pn,Wn,x,C)
%% �׺�������
fx = sum(x.*pn);
gx = sum(x.*Wn) - C;
if gx <= 0
    aff = fx;
else
    aff = 1/(gx+1);
end
