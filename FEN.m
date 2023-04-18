dane = generuj_dane(10);
encoded = zakoduj(dane);
BSC = kanal_BSC(encoded,0.2);
dekoded = dekoduj(BSC);
