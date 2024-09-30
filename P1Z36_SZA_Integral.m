function [Y] = P1Z36_SZA_Integral(f, n, m)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Obliczanie całek funckji ciągłej na obszarze
% D = {(x, y) ∈ R^2 : x^2 + y^2 <= 1} 
% przez transformację na kwadrat [-1, 1].
% Do obliczania całek stosujemy złożone dwupunktowe kwadratury
% Gaussa-Legendra ze względu na każdą ze zmiennych.
% Wejście:
%   f     - uchwyt do funkcji dwóch zmiennych, która może przyjmować jako
%           zmienne wektory wartości, z której całkę mamy obliczyć
%   n     - liczba naturalna mówiąca na ilu podprzedziałach stosować
%           dwupunktową kwadraturę Gaussa-Legendre'a względem zmiennej x
%   m     - liczba naturalna mówiąca na ilu podprzedziałach stosować
%           dwupunktową kwadraturę Gaussa-Legendre'a względem zmiennej y
% Wyjście:
%   Y     - skalar, wartość całki na danym obszarze przybliżoną podaną 
%           metodą
func = @(x, y)f(fi(x, y), p(x, y)).*abs(Jacobian2(x, y));
Y = SquareIntegral(func, n, m);