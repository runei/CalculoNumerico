function [k, x, Erel, C] = ZeroNewton(f, fl, x, tol, kmax)
% Entrada:
%   f = funcao definida por f = @(x) ou f = inline(f)
%   fl = derivada de f
%   x = valor inicializador (próximo do zero)
%   tol = tolerancia maxima para o erro relativo
%   kmax = numero maximo de iteracoes
%
%Saida:
%   k = numero da iteracao da aproximacao
%   x = a aproximacao obtida para o zero de f
%   Erel = erro relativo entre as duas ultimas aproximacoes
%   C = matriz com os valores para achar os zeros 

    k = 1;
    F = f(x);
    D = fl(x);
    Erel = inf;
    C = [k, x, F, D, Erel];
    while k < kmax && abs(Erel) > tol
        k = k + 1;
        u = x;
        x = x - (F/D);
        F = f(x);
        D = fl(x);
        Erel = ErroRel(u, x);
        C = [C; k, x, F, D, Erel];
    end
        
end