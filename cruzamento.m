function POPnovo = cruzamento(POP,xmin,xmax)
    
    [tamPOP,numVAR] = size(POP);
    
    POPnovo = zeros(tamPOP,numVAR);
    
    for i = 1:tamPOP
        r = randperm(tamPOP);
        POPnovo(i,:) = POP(r(1),:) + (2 * rand - 0.5) * (POP(r(2),:) - POP(r(1),:));
        
        if (rand < 0.05)
            POPnovo(i,:) = POPnovo(i,:) + 0.2 * (rand(1,numVAR) - 0.5) * (xmax-xmin);
        end
        
        POPnovo(i,:) = max(POPnovo(i,:),xmin);
        POPnovo(i,:) = min(POPnovo(i,:),xmax);
    end    
end