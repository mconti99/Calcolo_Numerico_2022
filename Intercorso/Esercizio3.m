%Scrivere una function in MATLAB che valuti la funzione 1/(x+100.74)^2-x^2
%controllando che il valore di x fornito in input, pur essendo
%nell'intervallo di rappresentazione del sistema aritmetico floating point,
%non provochi situazioni eccezionali del sistema IEEE. Verificare la
%function con esempi test
x1=40
[y1, ecc1] = ricerca_IEEE(x1)
delta = 1e-16;
x2 = - 100.74 / 2 + delta
[y2, ecc2] = ricerca_IEEE(x2)
