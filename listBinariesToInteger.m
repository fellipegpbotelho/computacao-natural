function listIntegers = listBinariesToInteger(listBinaries)
    
    sizeList = size(listBinaries);
    
    for i = 1:sizeList
       listIntegers(i) = binaryToInteger(listBinaries(i,:));
    end
end