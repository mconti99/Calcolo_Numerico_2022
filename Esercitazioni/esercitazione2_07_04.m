%Esercizio 2: si disegni in matlab il grafico della funzione y = (1 ?
%x)^(1/4)e si fornisca un punto x in cui la valutazione sia mal
%condizionata ed è un punto...

syms('x')
syms('y')

x = -200:0.1:1;
y = (1-x).^(1/4);

plot(x,y);

%Usiamo il rapporto delta y/delta x per ottenere così il condizionamento. 
%Per valori simili ad 1 possiamo notare che graficamente, data la
%pendenza elevata, il termine sarà mal condizionato. Calcolo quindi l'indice di
%condizionamento vicino ad 1.
x = 0.99999;
deltax = 0.000009

mu_x = abs((1-(x)^(1/4)-(1-(x)+deltax)^(1/4))/abs(x-(x+deltax)));

% Caso di buon condizionamento:
% Successivamente possiamo intuire che per valori prossimi a -100 il condizionamento sarà invece
% migliore, e quindi scegliamo il punto z = -100;

z=-100; 
y=(1-z).^(1/4);

z_p=z+deltax;
y_p=(1-z_p).^(1/4);

delta_y=norm(z_p-z);
mu=abs(delta_y)/abs(deltax);