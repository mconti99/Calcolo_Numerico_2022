%scrivere una function in MATLAB - denominata sist - che riceve in input i dati di un
%sistema lineare triangolare superiore ovvero la matrice dei coefficienti e il vettore dei
%termini noti, partiziona in 3 blocchi la matrice e in due blocchi il vettore dei termini
%noti e la soluzione, e fornisce in output la soluzione e una stima del numero di cifre
%signicatice corrette sulla soluzione. Fornire esempio test di correttezza

b = rand(4,1);
A = rand(4,4);
A = triu(A);
[sol_x, stima_cifre] = sist(A, b);
A
b
sol_x
stima_cifre
