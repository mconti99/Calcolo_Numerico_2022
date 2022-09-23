function [sol_x,stima_cifre] = sist(A,b)
%funziona solo per n pari   
n=size(A,1);
if mod(n,2)==0
    n1=n/2;
    n11=n1+1;
    A1= A(1:n1,1:n1);
    A12=A(1:n1,n11:n);
    A2=A(n11:n,n11:n);
    b1=b(1:n1);
    b2=b(n11:n);
    x2=A2\b2;
    x1=A1\(b1-A12*x2);
    sol_x=[x1; x2];
    res=A*sol_x - b;%calcolo cifre significative esatte
    err=cond(A)* (norm(res) / norm(b));
    stima_cifre=ceil(abs(-1 * (log10(err))));
else
    error("la funzione non prevede in ingresso matrici con dimensione dispari");
end
end

