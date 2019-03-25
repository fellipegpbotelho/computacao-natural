function listBin = binToInt(list)

    listSize = size(list, 1);
    
    listBin = zeros(listSize, 1);
    
    for i = 1:listSize
        listBin(i) = bin2dec(list(i));
    end
end