%Converts binary number into decimal number
function decimal_number = bindec(binarystring)

num_length = length(binarystring);
decimal_number = 0;

for i=1 : num_length
  decimal_number = decimal_number + str2double(binarystring(i)) * 2^(num_length - i);
end
