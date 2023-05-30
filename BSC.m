
obiekt.dane = 10000;
obiekt.bity = 3;
obiekt.kanal = 'BSC';
obiekt.BSC_P = 0.01;
obiekt.plik = 'wyniki.txt';


dane = generator(obiekt.dane);
encoded = koder_kodNadmiarowy(dane,obiekt.bity);
BSC_dane = kanal_BSC(encoded,obiekt.BSC_P);
dekoded = dekoder_kodNadmiarowy(BSC_dane,obiekt.bity);


fileID =fopen(obiekt.plik,'w');
fprintf(fileID,"%s %d %s %d %s %s %s %f \n","Ilość danych:",obiekt.dane," Bity:",obiekt.bity," Kanał:",obiekt.kanal," Dot.Kanału:",obiekt.BSC_P);
errors = monitor(dane,dekoded);
fprintf(fileID,"%s %d \n","Ilość błędów",errors);



