function y = esercizio3(x)
f=1/((x+100.74)^2-x^2);
if(eps*abs(x)>100.74)
    y="Errore";
else
    y="Operazione effettuabile";
end