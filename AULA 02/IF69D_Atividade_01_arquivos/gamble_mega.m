%gamble_mega [script]
clc;
%================================================= USER
% Sua aposta de 6 números em ordem crescente
aposta = [1 11 22 44 49 50];
%============================================= END USER

%Se variável 'sorteios' já existir no Workspace,
%não é necesário ler novamente.
if (~exist('sorteios', 'var'))
    sorteios = getMega; %lê megasena.csv
end

%Busca sorteio mais próximo
[sortMaisProx dist] = queryMega(aposta, sorteios);
[sortMaisProxVec distVec] = queryMegaVec(aposta, sorteios);
[MelhoresAcertos apostamelhor] = queryMegaHits(aposta, sorteios);
%ver também queryMegaVec

%Mostra resultado
disp(['Sua aposta:           ' num2str(aposta)])
disp(['Sorteio mais próximo: ' num2str(sortMaisProx),...
    ' (d=' num2str(dist) ')'])

disp(['Sorteio mais próximo Vec: ' num2str(sortMaisProxVec),...
    ' (d=' num2str(distVec) ')'])
disp(MelhoresAcertos)
disp(apostamelhor)