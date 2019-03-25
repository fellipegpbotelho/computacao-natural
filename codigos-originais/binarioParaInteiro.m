function POPi = converteBIN2INT(POPb,numVAR)
    [tamPOP, numBITS] = size(POPb); % o tamanho total do indivíduo (número de colunas total)
    numBITS = numBITS / numVAR; % o tamanho em bits de cada variável
    
    POPi = zeros(tamPOP,numVAR);
    
    for i = 1:tamPOP
        for d = 1:numVAR
            inicio = numVAR * (d - 1);
            for j = 1:numBITS
                POPi(i,d) = POPi(i,d) + POPb(i,inicio+j) * 2 ^ (numBITS - j);
            end
        end
    end
end
