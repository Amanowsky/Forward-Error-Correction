% Funkcja kodującą dane
function encoded = zakoduj(data)
    % Przygotowanie miejsca na zakodowane bity
    encoded = zeros(1, length(data) * 3);

  for i=1:length(data)
      % Potrajanie każdego bitu
      encoded(3*i-2:3*i) = repmat(data(i),1,3);
  end
end