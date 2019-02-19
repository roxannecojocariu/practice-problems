def reverse_string(str)
  split_string = str.split('')
  reversed_string = []
  split_string.length.times do |letter|
    reversed_string << split_string.pop
  end
  return reversed_string.join('')
end
