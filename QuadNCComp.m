function Q = QuadNCComp(f, a, b, m, n)
    % f = funcao definida inline ou @
    % a, b = limites da integração
    % m = numero de composicoes
    % n = ordem do polinomio e ordem de integracao
    
    if n == 1
        w = [1/2 1/2];
    elseif n == 2
        w = [1/6 4/6 1/6];
    elseif n == 3
        w = [1/8 3/8 3/8 1/8];
    elseif n == 4
        w = [7/90 32/90 12/90 32/90 7/90];
    end
    
    H = (b - a) / m;
    h = H / n;
    A = a;
    B = A + H;
    S = zeros(m, 1);
    for i = 1 : m
        x = (A : h : B);
        y = f(x);
        S(i) = H * sum(w * y);
        A = B;
        B = A + H;
    end
        
    Q = sum(S);
end