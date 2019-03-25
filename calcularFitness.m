function FIT = calcularFitness(FX)
    
    sizePopulation = size(FX, 1);
    
    fxMin = min(FX);
    fxMax = max(FX);
    
    deltaFx = fxMax - fxMin;
    
    FIT = zeros(sizePopulation, 1);
    
    for i = 1:sizePopulation
        FIT(i) = 1.1 - ((FX(i) - fxMin) / deltaFx); 
    end
end