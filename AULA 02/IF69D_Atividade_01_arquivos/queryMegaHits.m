function [ hits melhorAposta ] = queryMegaHits( aps, allMs  )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here

%Verifica se aps cont�m 6 n�meros
if (length(aps) ~= 6)
    error('Aposte 6 n�meros.')
end
%Cada sorteio em ordem crescente
allMsSorted = sort(allMs, 2);

%Numero de sorteios
ns = size(allMsSorted, 1); %numero de linhas

%Distancia city-block entre a aposta 'aps' e
%cada sorteio em 'AllMsSorted'

d = sum(ismember(allMsSorted, aps),2);
%Dist�ncias em ordem crescente e os �ndices

[val, idx] = max(d);;
hits = val;
melhorAposta = allMsSorted(idx,:);
end

