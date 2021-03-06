function novaPopulacao = cruzamentoBinario(populacao)

    [numeroPopulacao, tamanhoBits] = size(populacao);
    
    novaPopulacao = zeros(numeroPopulacao, tamanhoBits);
    
    for i = 1:numeroPopulacao
       % Primeiro elemento aleatório entre 1 e tamanhoBits - 1
       populacaoCorte = randperm(tamanhoBits - 1, 1);
       % Dois primeiros elementos aleatórios entre 1 e numeroPopulacai
       individuos = randperm(numeroPopulacao, 2);
       % Cocatena a parte da direita da populacao de corte do primeiros elemento com a parte da
       % direita da populacao de corte do segundo elemento
       populacao(i, :) = [populacao(individuos(1), 1:populacaoCorte) individuos(p(2), populacaoCorte + 1:end)];
    end
end