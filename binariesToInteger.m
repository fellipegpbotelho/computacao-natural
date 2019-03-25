function listIntegers = binariesToInteger(listBinaries)
    
    sizeList = size(listBinaries, 1);
    listIntegers = zeros(sizeList, 1);
    item = 0;
    
    for i = 1:sizeList
       num = '';
       disp(listBinaries(i));
       for j = 1:size(listBinaries(i,:), 2)
           disp(listBinaries(i,:));
           %disp(listBinaries(:,j));
           %num = num2str(listBinaries(i, ));
       end
       %item = binaryToInteger(listBinaries(i,j));
       item = 0;
       listIntegers(i) = item;
    end
end

for i = 1:tamanhoPopulacao
    for d = 1:numeroVariaveis
        inicio = numeroVariaveis * (d - 1);
        for j = 1:numeroBits
            populacaoInteiro(i, d) = populacaoInteiro(i, d) + populacaoBinario(i, inicio + j) * 2 ^ (numeroBits - j);
        end
    end
end
