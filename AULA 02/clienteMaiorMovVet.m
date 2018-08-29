function cad = clienteMaiorMovVet(clienteLoc, mes)

%cad = clienteMaiorMov(clientLoc, mes)
%Função que varre as estruturas em clienteLoc e 
%devolve em cad o cadastro do cliente com maior 
%movimentação no mês especificado pelo
%parâmetro de entrada mes.
%Exemplo: c = clienteMaiorMov(cliente, 3);
%Veja também: script que cria o vetor de 
%estruturas'cliente'.
%O número de clientes é o número de estruturas 
%do vetor de estruturas
nClient = length(clienteLoc);

%O número de meses é o comprimento do vetor movim
nMes = length(clienteLoc(1).movim);

%Concatena os vetores movim de todas as estruturas
temp = [clienteLoc.movim];

%Cada coluna contém a movim de um cliente
allMovim = reshape(temp, nMes, nClient);

%Movimentação de cada cliente no mes desejado
movimMes = allMovim(mes,:);

%O índice do máximo valor do vetor é o
%índice da struct correspondente ao 
%cliente com maior movimentação
[valor, indice] = max(movimMes);

%Retorna o cadastro do cliente com máxima movimentação
cad = clienteLoc(indice).cadastro;

end

