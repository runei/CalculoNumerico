function C = PivotamentoParcial(C, n, j)
% p�gina 12
% C matriz completa; n n�mero de linhas; j um valor menor ou igual a n
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