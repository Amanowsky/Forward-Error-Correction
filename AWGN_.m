dane = generator(300);
zakodowane = koder_Hamminga(dane);
error = kanal_AWGN(zakodowane,10);
dekodowane = dekoder_Hamminga(error,300);

roznica = abs(dane - dekodowane);
srednia_roznica = mean(roznica);