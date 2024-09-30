function[Z] = SquareIntegral(f, n, m)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Funkcja oblicza wartość całki podwójnej funkcji f(x, y) na kwadracie
% [-1, 1] x [-1, 1] za pomocą złożonej dwupunktowej kwadratury 
% Gaussa-Legendre'a. Dzieli przedział całkowania względem zmiennej
% x na n podprzedziałów i przedział całkowania względem zmiennej y
% na m podprzedziałów
% Wejście:
%   f - funkcja, której całkę chcemy policzyć
%   n - na ile podprzedziałów dzielimy przedział całkowania względem
%       zmiennej x
%   m - na ile podprzedziałów dzielimy przedział całkowania względem
%       zmiennej y
% Wyjście:
%   Z - skalar, wartość całki na danym obszarze przybliżoną podaną 
%       metodą
x = linspace(-1, 1, n+1);
y = linspace(-1, 1, m+1);
C = (x(2) - x(1))/2*(y(2) - y(1))/2;
x1 = IntegralElements(x);
y1 = IntegralElements(y);
y1 = y1';
Z = C*sum(sum(f(x1, y1)));