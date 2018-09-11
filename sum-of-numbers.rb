# 7kyu Sum of Numbers
#
#CHALLENGE:
# Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return a or b.
#
# Note: a and b are not ordered!
#
#
#SOLUTION:

def get_sum(a,b)
  if a < b
    total = (a..b).inject { |sum, n| sum + n }
  else
    total = (b..a).inject { |sum, n| sum + n }
  end
end
