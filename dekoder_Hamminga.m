function decodedData = dekoder_Hamminga(data,m)       
    n = 2^m - 1;    
    k = n - m;      
    decodedData = decode(data, n, k, 'hamming/binary');
end