function [POP,FX] = roleta(POP,FX,tamPOP)
    
    numPOP = size(FX,1);
    tamELITE = 5;
    
    FIT = calcularFitness(FX);
    FIT = FIT/sum(FIT);
    
    [~,i] = sort(FIT,'descend'); %Posições ordenadas
    
    ind = zeros(tamPOP,1);
    
    ind(1:tamELITE) = i(1:tamELITE);
    
    for i = tamELITE + 1:tamPOP
        
        soma = 0;
        r = rand;
        
        %r = randperm(size(POP, 1));
        
        for j = 1:numPOP
           
           soma = soma + FIT(j);
           
           %if (FX(r(1)) <= FX(r(2)))
            %   ind(i) = r(1);
           %else
            %   ind(i) = r(2);
           %end
           
           
           if (soma >= r)
                ind(i) = j;
               break;
           end
        end
    end
    
    POP = POP(ind,:);
    FX = FX(ind,:);

end