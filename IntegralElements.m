function[y] = IntegralElements(x)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Funkcja oblicza węzły dwupunktowej kwadratury Gaussa-Legendra dla równych
% podprzedziałów przedziału [-1, 1] reprezentowanych przez wektor x
% Wejście:
%   x - Wektor reprezentujący podprzedziały przedziału [-1, 1]. Wartości
%       wektora to granice podprzedziałów
% Wyjście:
%   y - wektor zawierający węzły złożonej kwadratury Gaussa-Legendre'a dla
%       przedziału [-1, 1] podzielonego tak jak prezentuje to wektor x
Cx = (x(2) - x(1));
x2 = x(2:length(x));
xsum = (x2 + x(1:length(x)-1))/2;
x1np = Cx*(-sqrt(3)/6) + xsum;
x1p = Cx*(sqrt(3)/6) + xsum;
y = reshape([x1np; x1p], [], 1);
end