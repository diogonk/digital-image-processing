function cad = clienteMaiorMov(clienteLoc, mes)

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

%Aloca
movimMes = zeros(1,length(clienteLoc));
%Varre as estruturas
for k=1:nClient
    %armazena em movimMes todas as movimenta��es
    %do m�s especificado por mes
    movimMes(k) = clienteLoc(k).movim(mes);
end
%O �ndice do m�ximo valor do vetor � o
%�ndice da struct correspondente ao 
%cliente com maior movimenta��o
[valor, indice] = max(movimMes); 
%Retorna o cadastro do cliente
%com m�xima movimenta��o
cad = clienteLoc(indice).cadastro;
end

