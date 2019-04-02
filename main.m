clear vars;
clc;

xMin = -5;
xMax = 5;

tamanhoPopulacao = 20;
numeroVariaveis = 1;
numeroBits = 10;
numeroGeracoes = 500;

populacao = round(rand(tamanhoPopulacao, numeroVariaveis * numeroBits));

populacaoInteiros = converterBinarioEmInteiro(populacao);
populacaoReais = converterInteiroEmReal(populacaoInteiros, numeroBits, xMin, xMax);

FX = calculaFX(populacaoReais);

for i = 1:numeroGeracoes
   
   novaPopulacao = variacaoBinaria(populacao);
   
   novaPopulacaoInteiros = converterBinarioEmInteiro(novaPopulacao);
   novaPopulacaoReais = converterInteiroEmReal(novaPopulacaoInteiros, numeroBits, xMin, xMax);
   
   novoFX = calculaFX(novaPopulacaoReais);
   
   populacao = [populacao; novaPopulacao];
   populacaoReais = [populacaoReais; novaPopulacaoReais];
   
   FX = [FX; novoFX];
   
   indices = selecao(FX, tamanhoPopulacao);
   
   populacao = populacao(indices,:);
   populacaoReais = populacaoReais(indices,:);
   FX = FX(indices,:);
end