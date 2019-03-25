function [POP, FX] = torneio(POP, FX, tamPOP)
    IND = zeros(tamPOP, 1);
    for i=1:tamPOP - 5
        R = randperm(size(POP, 1));
        if (FX(R(1)) <= FX(R(2)))
            IND(i) = R(1);
        else
            IND(i) = R(2);
        end
    end
    [N, R] = sort(FX);
    IND(end-4:end) = R(1:5);
    POP = POP(IND,:);
    FX = FX(IND);
end