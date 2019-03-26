clear vars; % Limpa variáveis
close all; % Fecha todas as figuras
clc; % Limpa a tela

binaries = ['000'; '001'; '010'; '110'; '101'; '111'];
integers = listBinariesToInteger(binaries)

real = intToReal(integers, -5, 5);

tamPop = 20;
numVar = 2;
numBits = 10;

pop = round(rand(tamPop, numVar * numBits))