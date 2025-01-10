function[z] = p(x, y)
% 
% Funkcja, która przekształca drugą współrzędną w transofrmacji obszaru 
% [-1, 1] x [1, 1] na koło o środku w (0, 0) i promieniu 1
z = y.*sqrt(1 - x.^2/2);
