
obiekt.dane = 10000;
obiekt.bity = 3;
obiekt.kanal = 'BSC';
obiekt.BSC_P = 0.01;
obiekt.plik = 'wyniki.txt';

tic;
dane = generuj_dane(obiekt.dane);
encoded = zakoduj(dane,obiekt.bity);
BSC = kanal_BSC(encoded,obiekt.BSC_P);
dekoded = dekoduj(BSC,obiekt.bity);
czas = toc;

fileID =fopen(obiekt.plik,'w');
fprintf(fileID,"%s %d %s %d %s %s %s %f \n","Ilość danych:",obiekt.dane," Bity:",obiekt.bity," Kanał:",obiekt.kanal," Dot.Kanału:",obiekt.BSC_P);
fprintf(fileID, '%d', dane);
fprintf(fileID, "\n");
fprintf(fileID,'%d',dekoded);
fprintf(fileID, "\n");

errors = monitor(dane,dekoded);
fprintf(fileID,"%s %d \n","Ilość błędów",errors);
fprintf(fileID,"%s %f \n","Czas[s]:",czas);


