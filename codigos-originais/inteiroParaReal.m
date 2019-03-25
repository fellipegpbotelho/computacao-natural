function POPr = converteINT2REAL(POPi,numBITS,xmin,xmax)
    [tamPOP, numVAR] = size(POPi);
    
    POPr = zeros(tamPOP,numVAR);
    
    for i = 1:tamPOP
        for d = 1:numVAR
            POPr(i,d) = xmin + POPi(i,d) * ((xmax-xmin) / (2 ^ numBITS - 1));
        end
    end
    
end
