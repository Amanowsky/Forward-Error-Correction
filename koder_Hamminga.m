function encoded_data = koder_Hamminga(data)
    n = length(data);
    % Obliczamy liczbę bitów parzystości
    r = 0;
    while 2^r < n + r + 1
        r = r + 1;
    end

    % Tworzymy zakodowaną sekwencję
    encoded_data = zeros(1, n + r);
    j = 1;
    for i = 1 : n + r
        if ismember(i, 2.^(0 : r))
            % Pomijamy bity parzystości na tym miejscu
            continue;
        end
        encoded_data(i) = data(j);
        j = j + 1;
    end

    % Obliczamy bity parzystości
    for i = 1 : r
        encoded_data(2^i) = mod(sum(encoded_data(bitget(1 : end, i) == 1)), 2);
    end
end