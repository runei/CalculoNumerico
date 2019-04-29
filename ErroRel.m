function Erel = ErroRel(x1 , x2)
% x1 e x2 são aproximacoes (diferenca relativa) ou 
% x1 é aproximacao e x2 é exato
    if x2 == 0
        Erel = x1;
    else
        Erel = (x1 - x2) / x2;
    end
end