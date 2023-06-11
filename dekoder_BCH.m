function msgRx = dekoder_BCH(error_code,M)
        n = 2^M-1;   % Codeword length
        k = 5; 
        t = bchnumerr(n,k);
        msgRx = bchdec(error_code,n,k);
end

