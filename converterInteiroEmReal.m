function populacaoReal = converterInteiroEmReal(populacaoInteiro, numeroBits, xMin, xMax)
    
    [tamanhoPopulacao, numeroVariaveis] = size(populacaoInteiro);
    
    populacaoReal = zeros(tamanhoPopulacao, numeroVariaveis);
    
    for i = 1:tamanhoPopulacao
        for j = 1:numeroVariaveis
            populacaoReal(i, j) = xMin + populacaoInteiro(i, j) * ((xMax - xMin) / (2 ^ (numeroBits - 1)));
        end
    end
end