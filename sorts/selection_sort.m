%Generates an array of 1000 numbers in range <-5;15>
%and sorts it using selection sort algorithm 
function numbers = selection_sort()
numbers = -5 + (5 + 15) * (rand(1000,1)-eps/2)/(1-eps);

for i=1:length(numbers)
  
  min = numbers(i);
  min_index = i;
  for j=i:length(numbers)
    if numbers(j) < min
      min = numbers(j);
      min_index = j;
    end
  end
  
  temp = numbers(min_index);
  numbers(min_index) = numbers(i);
  numbers(i) = temp;
end