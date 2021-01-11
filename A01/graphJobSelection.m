nMecs= ["098324-i7", "098324tree-i7"]; %colocar os ficheiros a comparar
color = "blue";
format long
for i = 1 : length(nMecs)
    file = strcat('data',nMecs(i),'.txt');
    data = load(file);
    T = data(:,1);
    P = data(:,2);
    time = data(:,3);
    plot3(T, P, time, '.', "color", color, "DisplayName", nMecs(i));
    hold on
    if color == "blue"
        color = "red";
    else
        color = "green";
    end
end
xlabel('Tasks')
ylabel('Programmers')
zlabel('Time in seconds')
set(gca,'zscale','log');
legend show
hold off

% Calculo da percentagem média de diminuição do tempo
% data = load('data098324-i7.txt');
% data = data(:,3);
% dataTree = load('data098324tree-i7.txt');
% dataTree = dataTree(:,3);
% percentage = zeros(length(data),1);
% 
% for i = 1 : length(data)
%     if ~(dataTree(i) == 0)
%         percentage(i) = dataTree(i) / data(i);
%     end
% end
% soma = 0;
% tamanho = 0;
% for i = 1 : length(percentage)
%     if ~(percentage(i) == 0)
%         soma = soma + percentage(i);
%         tamanho = tamanho + 1;
%     end
% end
% percentage = (soma / tamanho)*100