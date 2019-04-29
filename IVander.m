function [p, y1] = IVander(x, y, x1)
    m = length(x) - 1;
    A = MVander(x, m);
    p = SLGauss(A, y);
    
    y1 = VPol(p, x1);
end