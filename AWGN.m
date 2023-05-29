function noisy_signal = AWGN(signal, snr)
    % signal - wektor sygnału binarnego (1 lub 0)
    % snr - stosunek sygnału do szumu w dB
    
    % Obliczanie wartości SNR w skali liniowej
    snr_linear = 10^(snr/10);
    
    % Obliczanie prawdopodobieństwa błędu bitowego (BER)
    ber = 0.5 * erfc(sqrt(snr_linear));
    
    % Generowanie szumu błędu bitowego
    errors = rand(size(signal)) < ber;
    
    % Dodanie szumu do sygnału bitowego
    noisy_signal = xor(signal, errors);
end
