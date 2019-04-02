function novaPopulacao = variacaoBinaria(populacao)

    [numeroPopulacao, tamanhoBits] = size(populacao);
    
    novaPopulacao = zeros(numeroPopulacao, tamanhoBits);
    
    for i = 1:numeroPopulacao
       % Primeiro elemento aleatório entre 1 e tamanhoBits - 1
       populacaoCorte = randperm(tamanhoBits - 1, 1);
       % Dois primeiros elementos aleatórios entre 1 e numeroPopulacao
       individuos = randperm(numeroPopulacao, 2);
       % Cocatena a parte da direita da populacao de corte do primeiros elemento com a parte da
       % direita da populacao de corte do segundo elemento
       populacao(i, :) = [populacao(individuos(1), 1:populacaoCorte) populacao(individuos(2), populacaoCorte + 1:end)];
       % Mutação de bits
       % Primeiro elemento aleatório entre 1 e tamanhoBits
       r = randperm(tamanhoBits, 1);
       % O elemento recebe 1 - ele mesmo
       populacao(i, r) = 1 - populacao(i, r);
    end
end