function [ hits melhorAposta ] = queryMegaHits( aps, allMs  )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here

%Verifica se aps contém 6 números
if (length(aps) ~= 6)
    error('Aposte 6 números.')
end
%Cada sorteio em ordem crescente
allMsSorted = sort(allMs, 2);

%Numero de sorteios
ns = size(allMsSorted, 1); %numero de linhas

%Distancia city-block entre a aposta 'aps' e
%cada sorteio em 'AllMsSorted'

d = sum(ismember(allMsSorted, aps),2);
%Distâncias em ordem crescente e os índices

[val, idx] = max(d);;
hits = val;
melhorAposta = allMsSorted(idx,:);
end

