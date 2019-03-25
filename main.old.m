clear vars; % Limpa variáveis
close all; % Fecha todas as figuras
clc; % Limpa a tela

xmin = -5;
xmax = 5;

tamPOP = 20;
numVAR = 2;
numGER = 500;

POP = xmin + rand(tamPOP,numVAR) * (xmax - xmin);
FX = calculaFX(POP);

for i = 1:numGER
   Xnovo = cruzamento(POP,xmin,xmax);
   FXnovo = calculaFX(Xnovo);
   
   POP = [POP; Xnovo];
   FX = [FX; FXnovo];
   
   [POP,FX] = roleta(POP, FX, tamPOP);

   plot(POP(:,1),POP(:,2),'ro');
   
   xlabel(num2str(min(FX)));
   axis([xmin xmax xmin xmax]);
   
   grid on;
   
   %pause;
   
   drawnow();
end

min(FX)