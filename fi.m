function[z] = fi(x, y)
% 
% Funkcja, która przekształca pierwszą współrzędną w transofrmacji obszaru 
% [-1, 1] x [1, 1] na koło o środku w (0, 0) i promieniu 1
z = x.*sqrt(1 - y.^2/2);
