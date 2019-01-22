#timed coding challenge for prospective employer
#given a binary number, determine the decimal value.  Then if number is even, divide by 2, if number is odd, subtract by 1. Determine number of steps it takes to get to 0.

def solution(s)
  binary_digits = s.length
  sum = 0
  decimal = 0
  s.split(//).each do |digit|
    binary_digits -= 1
    decimal = digit.to_i*(2**binary_digits)
    sum += decimal
  end

  number_of_steps = 0

  while sum != 0 do
    if sum % 2 == 0
      (sum /= 2)
      number_of_steps += 1
    else
      sum -= 1
      number_of_steps += 1
    end
  end
    return number_of_steps
end

solution('011100')
