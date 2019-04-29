function [k, x, Erel, C] = ZeroBissecao(f, a, b, tol, kmax)
% Entrada:
%   f = funcao definida por f = @(x) ou f = inline(f)
%   a e b = os termos do intervalo que contem um zero de f
%   tol = tolerancia maxima para o erro relativo
%   kmax = numero maximo de iteracoes
%
%Saida:
%   k = numero da iteracao da aproximacao
%   x = a aproximacao obtida para o zero de f
%   Erel = erro relativo entre as duas ultimas aproximacoes
%   C = matriz com os valores para achar os zeros 

    k = 1;
    x = (1 / 2) * (a + b);
    fx = f(x);
    fa = f(a);
    fb = f(b);
    Erel = inf;
    C = [k a x b fa fx fb Erel];
    
    while k < kmax && abs(Erel) > tol
        if fa * fx <= 0
            b = x;
            fb = fx;
        else
            a = x;
            fa = fx;
        end
        k = k + 1;
        u = x;
        x = (1 / 2) * (a + b);
        fx = f(x);
        aula = aula2008;
        Erel = aula.ErroRel(u, x);
        C = [C; k a x b fa fx fb Erel];
    end
end