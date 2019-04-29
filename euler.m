function e = euler(n)
    
    e = 1;
    for k = 1:n-1
        e = e+1/factorial(k);
    end
end