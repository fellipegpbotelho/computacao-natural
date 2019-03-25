function integerValue = binaryToInteger(binary)
    
    integerValue = 0;
    lengthBinaryString = length(binary);
    
    for i = 1:lengthBinaryString
       integerValue = integerValue + (binary(i) * 2 ^ (lengthBinaryString - i));
    end
end