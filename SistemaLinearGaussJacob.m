function [x, erel, k, tab] = SistemaLinearGaussJacob(A, b, tol, kmax)
    n = size(A, 1);
    C = zeros(n, n);
    d = zeros(n, 1);
    for i = 1 : n
        for j = 1 : n
            if i ~= j
                C(i, j) = -A(i, j) / A(i, i);
            end
        end
        d(i) = b(i) / A(i, i);
    end
    
    if max(abs(eig(C))) >= 1
        disp('O meetodo nao converge');
        x = inf;
        erel = inf;
        k = 1;
        return;
    end
    
    k = 1;
    x = ones(n, 1);
    erel = inf;
    tab = [k x' erel];
    while k < kmax && erel > tol
        k = k + 1;
        u = x;
        x = C * x + d;
        erel = ErroRelativoVetorial(u, x);
        tab = [tab; k x' erel];
    end
end