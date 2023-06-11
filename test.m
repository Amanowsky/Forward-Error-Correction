% Dane binarne
data = [1 0 1 1 0 0 1 1 0 0 0 1];

% Parametry modelu Gilberta-Elliotta
p_good = 0.9; % Prawdopodobieństwo poprawnej transmisji
p_bad = 1-p_good; % Prawdopodobieństwo złej transmisji
p_swap = 0.02; % Prawdopodobieństwo zmiany stanu kanału

% Inicjalizacja symulowanych danych z błędami
received_data = data;

% Symulacja błędów
state = 1; % Stan początkowy kanału (dobre transmisje)
for i = 1:length(data)
    if state == 1 % Dobra transmisja
        if rand < p_good
            received_data(i) = data(i); % Nie ma błędu
        else
            received_data(i) = ~data(i); % Błąd
            state = 0; % Zmiana na stan złej transmisji
        end
    else % Zła transmisja
        if rand < p_swap
            state = 1; % Zmiana na stan dobrej transmisji
        end
        if rand < p_bad
            received_data(i) = ~data(i); % Błąd
        else
            received_data(i) = data(i); % Nie ma błędu
        end
    end
end

% Wyświetlanie danych wejściowych i otrzymanych danych
disp("Dane wejściowe:");
disp(data);
disp("Otrzymane dane:");
disp(received_data);
