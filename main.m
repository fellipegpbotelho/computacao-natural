clear vars;
clc;

xMin = -5;
xMax = 5;

tamanhoPopulacao = 20;
numeroVariaveis = 1;
numeroBits = 10;

populacao = round(rand(tamanhoPopulacao, numeroVariaveis * numeroBits));

populacaoInteiros = converterBinarioEmInteiro(populacao);
populacaoReais = converterInteiroEmReal(populacaoInteiros, numeroBits, xMin, xMax);