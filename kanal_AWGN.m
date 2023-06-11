function dane_wyjsiowe = kanal_AWGN(dane, snr_dB)
 
% Symulacja AWGN
szum = sqrt(10^(-snr_dB/10)); % Obliczanie wartości szumu na podstawie SNR w dB
    dane_wyjsiowe = dane + szum*randn(size(dane)); % Dodanie szumu Gaussianowego
    dane_wyjsiowe = double(dane_wyjsiowe > 0.5); % Konwersja na formę binarną (0 lub 1)

end
