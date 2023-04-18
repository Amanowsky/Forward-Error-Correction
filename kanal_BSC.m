% Funkcja symulująca przepływ danych przez kanał BSC
function output = kanal_BSC(data,p)
    % data - dane wejściowe
    % p  - prawdopodobieństwo błędu ( od 0 do 1 )

    % Wygenerowanie losowej wartości Bernoulliego
    bern = rand(size(data)) < p;
    
    % Inwersja bitów zgodnie z wartościami wylosowanymi
    values = xor(data,bern)
    output = double(values)
end