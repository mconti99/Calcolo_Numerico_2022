function [stima_x,x1,stima_z,x2] = calc_stima()
%grafico la funzione
f = @(x) 1 ./ (x - 5);
x=linspace(-200,10);
y = f(x);
plot(x, y);
delta_x=0.00009;
x1=4.99999;%mal condizionato, asintoto in 5
x2=-5;%ben condizionato
y1=f(x1);
y2=f(x2);
%Usiamo il rapporto delta y/delta x per ottenere così il condizionamento. 
stima_x=abs((y1 - f(x1 + delta_x)))/abs(x1-(x1+delta_x));
stima_z=abs((y2 - f(x2 + delta_x)))/abs(x2-(x2+delta_x));
end

