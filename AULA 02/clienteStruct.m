%Script que cria vetor com 4 estruturas
%Cada estrutura contém os dados de um
%cliente de uma locadora
clear all;

%Campos da estrutura "cliente":
%cadastro: número da carteirinha
%bairro: residência do titular (string)
%movim: vetor com número de locações em
%cada mes [mes1 mes2 mes3 mes4 mes5]
cliente(1) = struct('cadastro', 1347,...
    'bairro', 'Rebouças','movim', [0 1 3 2 3]);
cliente(2) = struct('cadastro', 1348,...
    'bairro', 'Água Verde','movim', [2 3 4 4 5]);
cliente(3) = struct('cadastro', 1349,...
    'bairro', 'Centro','movim', [1 0 5 6 2]);
cliente(4) = struct('cadastro', 1350,...
    'bairro', 'Rebouças','movim', [4 4 2 2 1]);

