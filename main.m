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
   novoFX = calculaFX(novaPopulacao);
   populacao = [populaco novaPopulacao];
   novoFX = [FX novoFX];
end

%populacaoInteiros = converterBinarioEmInteiro(populacao);
%populacaoReais = converterInteiroEmReal(populacaoInteiros, numeroBits, xMin, xMax);