%studio il condizionamento della funzione tramite il rapporto incrementale
function ex2(delta_x)
      close all;

      syms x; % variabile simbolica
      f1=1/(x-5);
      f2=1/(x+delta_x-5);
      fplot(f1,[-100,100],'b')
      hold on;
      fplot(abs(f1-f2)/delta_x,[-100,100],'r')
end

%RISULTATO: il problema è mal condizionato per x che va da 2 a 6, mentre è
%ben condizionato per x<2 e per x>6 (CIRCA)