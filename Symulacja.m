obiekt.dane = 10000;
obiekt.bity = 4;
obiekt.m = 4;
obiekt.kanal = 'GILBERT';
obiekt.kanal_ustawienie = 0.05;


dane = generator(obiekt.dane);

switch obiekt.kanal
    case 'BSC'
        encoded_kodNadmiarowy = koder_kodNadmiarowy(dane,obiekt.bity);
        error = kanal_BSC(encoded_kodNadmiarowy,obiekt.kanal_ustawienie);
        dekoded = dekoder_kodNadmiarowy(error,obiekt.bity);
        bledy_kodNadmiarowy = monitor(dane,dekoded);
        encoded_kodHamminga = koder_Hamminga(dane,obiekt.m);
        error = kanal_BSC(encoded_kodHamminga,obiekt.kanal_ustawienie);
        dekoded = dekoder_Hamminga(error,obiekt.m);
        dekoded = dekoded(1:length(dane));
        bledy_kodHamminga = monitor(dane,dekoded);
        
    case 'AWGN'
        encoded_kodNadmiarowy = koder_kodNadmiarowy(dane,obiekt.bity);
        error = kanal_AWGN(encoded_kodNadmiarowy,obiekt.kanal_ustawienie);
        dekoded = dekoder_kodNadmiarowy(error,obiekt.bity);
        bledy_kodNadmiarowy = monitor(dane,dekoded);
        encoded_kodHamminga = koder_Hamminga(dane,obiekt.m);
        error = kanal_AWGN(encoded_kodHamminga,obiekt.kanal_ustawienie);
        dekoded = dekoder_Hamminga(error,obiekt.m);
        dekoded = dekoded(1:length(dane));
        bledy_kodHamminga = monitor(dane,dekoded);
     
    case 'GILBERT'
        encoded_kodNadmiarowy = koder_kodNadmiarowy(dane,obiekt.bity);
        error = kanal_Gilbert(encoded_kodNadmiarowy,obiekt.kanal_ustawienie);
        dekoded = dekoder_kodNadmiarowy(error,obiekt.bity);
        bledy_kodNadmiarowy = monitor(dane,dekoded);
        encoded_kodHamminga = koder_Hamminga(dane,obiekt.m);
        error = kanal_Gilbert(encoded_kodHamminga,obiekt.kanal_ustawienie);
        dekoded = dekoder_Hamminga(error,obiekt.m);
        dekoded = dekoded(1:length(dane));
        bledy_kodHamminga = monitor(dane,dekoded);
end



