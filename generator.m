% Funkcja losująca dane
function output = generator(n)
    % Wygenerowanie n losowych danych
    output = randi([0,1],1,n);
end