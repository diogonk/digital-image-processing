function [ med,dp ] = estatComponente( comp, tipoc )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

tp = [comp.tipo];
tp_index = tp == tipoc;
med = mean([comp(tp_index).horas]);
dp = std([comp(tp_index).horas]);

end

