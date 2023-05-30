function decoded_data = dekoder_Hamminga(encoded_data,bits)
    n = length(encoded_data);
    % Obliczamy liczbę bitów parzystości
    r = 0;
    while 2^r < n
        r = r + 1;
    end

    % Dekodujemy sekwencję
    decoded_data = zeros(1, n - r);
    j = 1;
    for i = 1 : n
        if ~ismember(i, 2.^(0 : r))
            decoded_data(j) = encoded_data(i);
            j = j + 1;
        end
    end
    decoded_data = decoded_data(1:bits);
end