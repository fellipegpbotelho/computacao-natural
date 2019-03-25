function listReal = intToReal(list, xmax, xmin)
    
    listSize = size(list, 2);
    factor = max(list);
    
    for i = 1:listSize
        listReal(i, :) = xmin + list(i) * ((xmax-xmin) / factor);
    end
end