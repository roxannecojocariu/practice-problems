# Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
  string = n.to_s
  string = string.split('')
  string = string.sort { |x,y| y <=> x }
  return string.join('').to_i
end
