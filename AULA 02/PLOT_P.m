close all; clear all; clc;
C = 250;
a = 60;
b1 = 0.6;
b2 = 0.4;
%P = P(t);
t = 0:1:20;

%eixo x do gráfico
p1 = C./(1+a*exp(-b1*t));%função 1

p2 = C./(1+a*exp(-b2*t));%função 2

plot(t, p1, 'r-.', 'LineWidth', 2);
hold on
%mantém a útima curva plotada
plot(t, p2, 'g-.', 'LineWidth', 2);
hold off %desabilita o hold
%Legenda
legend('0.6', '0.4', 'NorthEast')
%1:canto sup. dir. 2:canto sup. esq.
%3:canto inf. esq. 4:canto inf. dir.
%limites dos eixos: axis([xmin xmax ymin ymax])

axis([0 20 0 250]);
set(gca,'XTick',0:2:20);

%set(gca,'XTickLabel', {'0', '5', '10','15','20'});
grid on;

xlabel('t'); 
ylabel('p(t)');
title('p1 e p2'); %título