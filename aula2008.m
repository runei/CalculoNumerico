function aula = aula2008
  aula.PivotamentoParcial=@PivotamentoParcial;
  aula.euler = @euler;
  aula.ErroRel = @ErroRel;
end

function C = PivotamentoParcial(C, n, j)
% página 12
% C matriz completa; n número de linhas; j um valor menor ou igual a n
    p = abs(C(j, j));
    k = j;
    
    for i=j+1:n
        if abs(C(i, j)) > p
            p = abs(C(i,j));
            k = i;
        end
    end
    
    if p == 0
        disp('pivotamento impossivel')
    end
    if k > j
        T = C(j, :);
        C(j, :) = C(k, :);
        C(k, :) = T;
    end
    
end

function e = euler(n)
    
    e = 1;
    for k = 1:n-1
        e = e+1/factorial(k);
    end
end

function Erel = ErroRel(x1 , x2)
% x1 e x2 são aproximacoes (diferenca relativa) ou 
% x1 é aproximacao e x2 é exato
    if x2 == 0
        Erel = x1;
    else
        Erel = (x1 - x2) / x2;
    end
end