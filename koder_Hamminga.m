function encodedData = koder_Hamminga(data,m)       
    n = 2^m - 1;    
    k = n - m;      
    encodedData = encode(data, n, k, 'hamming/binary');
end