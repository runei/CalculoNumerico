%1.1
a = 2 .^ 5, b = sqrt(7)

%1.2
a = exp(2), b = 2 .^ (1/3), c = (-8) .^ (1/3)

%1.3
 a = cosd(60), b = tan(pi / 4)
 
 %1.4
 a = log10(1000), b = log(1000), c = log2(1000)
 
 %1.5
 a = abs(-5), b = factorial(9)
 
 %1.6
 3.5603e4 + 2.0034e3
 
 %1.7
 x = [6 2 0 5], y = [6 2 0 5]'
 
 %1.8
 w = [0:0.1:10]
 
 %1.9
 z = zeros(1, 20)
 
 %1.10
 u = ones(20, 1)
 
 %1.11
 A = [1 7; -4 3]
 
 %1.12
 B = [0 1 2; 3 -3 1; -1 0 3; 2 1 -1]
 
 %1.13
 a = 1 + 2 / 3 - 4 * 5 % -18,3333
 
 %1.14
 x = 30, b = sin(x) * cos(x) % x = 30, b = -0,1524
 
 %1.15
 y = 100, c = sqrt(y) - log(y) % y = 100, c = 5.3948
 
 %1.16
 z = 0.0001, d = abs(log10(z)) % z = 1.0000e-04, d = 4
 
 %1.17
 w = pi/2, e = exp(cos(w)) % w = 1.5708, e = 1
 
 %1.18
 A = [1 2 3; 4 5 6], [m, n] = size(A) % m = 2, n = 3
 
 %1.19
 a = log(5)
 
 %1.20
 y = 1 + exp(3)
 
 %1.21
 t = cos(3.1416)
 
 %1.22
 x = 16, y = sqrt(x)
 
 %1.23 - nao fiz
 
 %1.24
 f = @(x) x .^ 2 + x - 4;
 ezplot(f)
 grid on
 xlabel('X')
 ylabel('Y')
 title('f(x)')
 
 %1.25
 g = @(x) exp(-x) - 1;
 ezplot(g);
 grid on
 xlabel('X')
 ylabel('Y')
 title('g(x)')
 
 %1.26
 h = @(x) 2 + 3*cos(pi * x);
 ezplot(h);
 grid on
 xlabel('X')
 ylabel('Y')
 title('h(x)')
 
 %1.27
 i = @(x) (x + 1) / (x - 1)
 ezplot(i);
 grid on
 xlabel('X')
 ylabel('Y')
 title('i(x)')
 
 %1.28
 
 