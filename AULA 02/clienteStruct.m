%Script que cria vetor com 4 estruturas
%Cada estrutura cont�m os dados de um
%cliente de uma locadora
clear all;

%Campos da estrutura "cliente":
%cadastro: n�mero da carteirinha
%bairro: resid�ncia do titular (string)
%movim: vetor com n�mero de loca��es em
%cada mes [mes1 mes2 mes3 mes4 mes5]
cliente(1) = struct('cadastro', 1347,...
    'bairro', 'Rebou�as','movim', [0 1 3 2 3]);
cliente(2) = struct('cadastro', 1348,...
    'bairro', '�gua Verde','movim', [2 3 4 4 5]);
cliente(3) = struct('cadastro', 1349,...
    'bairro', 'Centro','movim', [1 0 5 6 2]);
cliente(4) = struct('cadastro', 1350,...
    'bairro', 'Rebou�as','movim', [4 4 2 2 1]);

