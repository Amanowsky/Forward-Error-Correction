% Funkcja dekodująca i korygująca błędy za pomocą algorytmu głosującego
function decoded = dekoduj(data)
    % Przygotowanie miejsca dla odkodowanych danych
    decoded = zeros(1, length(data)/3)

    for i=1:length(decoded)
        % Pobieranie każdej trójki bitów i podjęcie decyzji
        triplet = data(3*i-2:3*i);
        if sum(triplet == 0) >= 2
            decoded(i) = 0;
        elseif sum(triplet == 1) >= 2
            decoded(i) = 1;
        end
    end
end