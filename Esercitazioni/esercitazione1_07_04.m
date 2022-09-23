M=rand(10,10);

matricola=[1,3,1,7];

A=[M*matricola(1), zeros(10,10), zeros(10,10),zeros(10,10);
  zeros(10,10),M*matricola(2), zeros(10,10), zeros(10,10);
  zeros(10,10),zeros(10,10),M*matricola(3),zeros(10,10);
  zeros(10,10), zeros(10,10), zeros(10,10), M*matricola(4)];

b1=rand(10,1);
A11=A(1:10,1:10);
A22=A(11:20,11:20);
A33=A(21:30,21:30);
A44=A(31:40,31:40);

x1=A11\b1;
b2=x1*matricola(3);

x2=A22\b2;
b3=x2*matricola(2);

x3=A33\b3;
b4=x3*matricola(1);

x4=A44\b4;
b=[b1;b2;b3;b4];
x=[x1;x2;x3;x4];
ErrRel= cond(A)*norm(b-A*x)/(norm(b))
