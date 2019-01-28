# Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.
#
# The binary number returned should be a string.
require 'pry'
def add_binary(a,b)
  continue = true
  sum = a + b
  binary = []
  while continue == true
    if sum % 2 == 0
      binary.push(0)
      sum = sum / 2
    elsif sum == 1
        binary.push(1)
        continue = false
    elsif sum == 0
      continue = false
    else
      binary.push(1)
      sum = sum /2
    end
  end
  return binary.reverse.join('')
end

add_binary(1,1)
