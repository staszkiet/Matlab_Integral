function[z] = p(x, y)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Funkcja, która przekształca drugą współrzędną w transofrmacji obszaru 
% [-1, 1] x [1, 1] na koło o środku w (0, 0) i promieniu 1
z = y.*sqrt(1 - x.^2/2);