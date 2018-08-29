function cad = clienteMaiorMovVet(clienteLoc, mes)

%cad = clienteMaiorMov(clientLoc, mes)
%Fun��o que varre as estruturas em clienteLoc e 
%devolve em cad o cadastro do cliente com maior 
%movimenta��o no m�s especificado pelo
%par�metro de entrada mes.
%Exemplo: c = clienteMaiorMov(cliente, 3);
%Veja tamb�m: script que cria o vetor de 
%estruturas'cliente'.
%O n�mero de clientes � o n�mero de estruturas 
%do vetor de estruturas
nClient = length(clienteLoc);

%O n�mero de meses � o comprimento do vetor movim
nMes = length(clienteLoc(1).movim);

%Concatena os vetores movim de todas as estruturas
temp = [clienteLoc.movim];

%Cada coluna cont�m a movim de um cliente
allMovim = reshape(temp, nMes, nClient);

%Movimenta��o de cada cliente no mes desejado
movimMes = allMovim(mes,:);

%O �ndice do m�ximo valor do vetor � o
%�ndice da struct correspondente ao 
%cliente com maior movimenta��o
[valor, indice] = max(movimMes);

%Retorna o cadastro do cliente com m�xima movimenta��o
cad = clienteLoc(indice).cadastro;

end

