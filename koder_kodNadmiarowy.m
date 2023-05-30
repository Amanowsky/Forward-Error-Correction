% Funkcja kodującą dane
function encoded = koder_kodNadmiarowy(data,multi)
   if multi <= 0
       error('!Multi < 0')
   end
    % Przygotowanie miejsca na zakodowane bity
    encoded = zeros(1, length(data) * multi);

  for i=1:length(data)
      % Potrajanie każdego bitu
      encoded(multi*(i-1)+1:multi*i) = repmat(data(i),1,multi);
  end
end