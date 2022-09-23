function [y, ecc] = ricerca_IEEE(x)
%La funzione avrà dei casi eccezionali interni al sistema rappresentativo
%floating point nel caso in cui il denominatore va a 0. Quindi cerchiamo
%questi sostituendo lo zero al denominatore
ecc=0;
a=100.74;
f=@(x) 1 / ((x+100.74).^2 - x^2);
y=0;
if(x+a/2)< eps(-a/2) || a<eps(x)
    ecc=1;
else
    y=f(x);
end    
end

