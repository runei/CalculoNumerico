function [fx, v, Sqe] = AjustePol(x, y, m)
    X = MVander(x, m);
    A = X' * X;
    b = X' * y;
    fx = SLGauss(A,b);
    v = X * b;
    Sqe = norm(y - v) ^ 2;
end