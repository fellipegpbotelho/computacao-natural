function populacaoInteiro = converterBinarioEmInteiro(populacaoBinario)
    
    [tamanhoPopulacao, numeroBits] = size(populacaoBinario);
    
    populacaoInteiro = zeros(tamanhoPopulacao, 1);
    
    for i = 1:tamanhoPopulacao
        for j = 1:numeroBits
            populacaoInteiro(i, 1) = populacaoInteiro(i, 1) + populacaoBinario(i, j) * 2 ^ (numeroBits - j);
        end
    end
end