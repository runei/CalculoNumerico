function Erel = ErroRel(x1 , x2)
% x1 e x2 s�o aproximacoes (diferenca relativa) ou 
% x1 � aproximacao e x2 � exato
    if x2 == 0
        Erel = x1;
    else
        Erel = (x1 - x2) / x2;
    end
end