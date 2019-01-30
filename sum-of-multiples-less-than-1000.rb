def sum_of_multiples
  sum = 0
  (1..999).select do |number|
    if number % 3 == 0 || number % 3 == 0
      sum += number
    end
  end
  return sum
end

sum_of_multiples
