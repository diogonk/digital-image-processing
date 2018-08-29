function cad = clienteMaiorMov(clienteLoc, mes)

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

%Aloca
movimMes = zeros(1,length(clienteLoc));
%Varre as estruturas
for k=1:nClient
    %armazena em movimMes todas as movimentações
    %do mês especificado por mes
    movimMes(k) = clienteLoc(k).movim(mes);
end
%O índice do máximo valor do vetor é o
%índice da struct correspondente ao 
%cliente com maior movimentação
[valor, indice] = max(movimMes); 
%Retorna o cadastro do cliente
%com máxima movimentação
cad = clienteLoc(indice).cadastro;
end

