function res = MVander(x, m)
%res = vetor coluna
%m = maior expoente de x
%x primeira coluna de res

    n = length(x);
    res = zeros(n, m + 1);
    for i = 1 : n
        res(i, m + 1) = 1;
        for j = m : -1 : 1
            res(i, j) = x(i)*res(i, j + 1);
        end
    end
end