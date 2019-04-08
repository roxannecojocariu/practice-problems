require 'pry'
def anagram(arr)
  new_arr = []
  arr.each_with_index do |word, index|
    new_arr.push([word.split('').sort.join(''), index])
  end
  final_arr = []
  new_arr.sort.each do |element|
    binding.pry
    final_arr.push(arr[element[1]])
  end
  puts final_arr
end

anagram(['cat', 'dog', 'tac', 'god', 'act'])

# first .each do |word|
# then create new_arr to push word into - make sure to split, sort and join the word
# then pause and think because now i have words sorted but have to print them out together in groups
# go back and with_index
# then sort
