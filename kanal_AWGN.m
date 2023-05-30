function dane_wyjsiowe = kanal_AWGN(dane, snr_dB)
    % dane - wektor sygnału binarnego (1 lub 0)
    % snr_dB - stosunek sygnału do szumu w dB
    
   % Obliczanie mocy sygnału wejściowego
   moc_sygnalu = mean(abs(dane).^2);
   snr = 10^(snr_dB/10);
   moc_szumu = moc_sygnalu / snr;
   szum = sqrt(moc_szumu) * randn(size(dane));
   dane_wyjsiowe = dane + szum;
   
end
