function [H, C] = mediaHarmonica(n1, n2, n3)
%H = media harmonica; C = conceito
    
    if n1 <= 0 || n2 <= 0 || n3 <= 0
        H = 0;
    else
        H = 3 / ((1/n1) + (1/n2) + (1/n3));
    end;
    
    if H >= 9 
        C = 4;
    elseif H >= 8
        C = 3;
    elseif H >= 7
        C = 2;
    elseif H >= 6
        C = 1;
    else
        C = 0;
    end
    
 end