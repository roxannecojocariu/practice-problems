# 7 kyu   Sum of two lowest positive integers

# CHALLENGE:
# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 integers. No floats or empty arrays will be passed.
#
# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
#
# [10, 343445353, 3453445, 3453545353453] should return 3453455.
#
# Hint: Do not modify the original array.
#
#
# SOLUTION:

def sum_two_smallest_numbers(numbers)
  if numbers.length < 4
    return "Your array must contain a minimum of 4 integers."
  end
  numbers.delete_if {|number| number < 0 || !number.integer?}
  sorted_numbers = numbers.sort
  sum = sorted_numbers[0] + sorted_numbers[1]
  puts sum
end
