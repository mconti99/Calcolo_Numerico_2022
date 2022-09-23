%Esercizio 3  

m=2517;
x=m/100;

fl_x=round(x,3,'significant');

%L'approssimazionefornisce un erroree di round-off in quanto la
%cifra aveva 4 cifre significative
err_abs=abs(fl_x-x);
err_rel=abs(x-fl_x)/abs(x);

%%Se si valuta nel caso di due cifre significative
fl2_x=round(x,2,'significant');

err_rel2=abs(x-fl2_x)/abs(x);
err_abs2=abs(fl2_x-x);

