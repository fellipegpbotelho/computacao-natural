function [indices] = selecao(FX,tamanhoPopulacao)

    numeroPopulacao = size(FX, 1);
    
    [~, indices] = sort(FX);
    
    indices = indices(1:round(0.1 * tamanhoPopulacao));    
    r = randperm(numeroPopulacao);
    
    indices = [indices; r'];
    indices = indices(1:tamanhoPopulacao);
end