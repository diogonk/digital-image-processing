%gamble_mega [script]
clc;
%================================================= USER
% Sua aposta de 6 n�meros em ordem crescente
aposta = [1 11 22 44 49 50];
%============================================= END USER

%Se vari�vel 'sorteios' j� existir no Workspace,
%n�o � neces�rio ler novamente.
if (~exist('sorteios', 'var'))
    sorteios = getMega; %l� megasena.csv
end

%Busca sorteio mais pr�ximo
[sortMaisProx dist] = queryMega(aposta, sorteios);
[sortMaisProxVec distVec] = queryMegaVec(aposta, sorteios);
[MelhoresAcertos apostamelhor] = queryMegaHits(aposta, sorteios);
%ver tamb�m queryMegaVec

%Mostra resultado
disp(['Sua aposta:           ' num2str(aposta)])
disp(['Sorteio mais pr�ximo: ' num2str(sortMaisProx),...
    ' (d=' num2str(dist) ')'])

disp(['Sorteio mais pr�ximo Vec: ' num2str(sortMaisProxVec),...
    ' (d=' num2str(distVec) ')'])
disp(MelhoresAcertos)
disp(apostamelhor)