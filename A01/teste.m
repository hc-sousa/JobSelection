data = load("table098324.txt");
data1 = load("table098324random.txt");
data1 = data1(:,3);
data = data (:, 5);
soma = 0;
for i = 1 : length(data)
   if (data(i) == data1(i)) 
      soma = soma + 1; 
   end    
end   
soma
percentage = soma / length(data)