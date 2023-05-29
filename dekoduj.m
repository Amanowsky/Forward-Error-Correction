% Funkcja dekodująca i korygująca błędy za pomocą algorytmu głosującego
function decoded = dekoduj(data,multi)
    
    % Przygotowanie miejsca dla odkodowanych danych
    decoded = zeros(1, length(data)/multi);

    

    for i=1:length(decoded)
        % Pobieranie każdej trójki bitów i podjęcie decyzji
        triplet = data(multi*(i-1)+1:multi*i);
        if sum(triplet == 0) >= multi/2
            decoded(i) = 0;
        elseif sum(triplet == 1) >= multi/2
            decoded(i) = 1;
        end
    end
end