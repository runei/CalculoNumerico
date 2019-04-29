function Erel = ErroRelativoVetorial(u, v)
    if norm(v) == 0
        Erel = norm(u);
    else
        Erel = norm(u - v) / norm(v);
    end
end