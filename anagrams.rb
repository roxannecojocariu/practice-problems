# def anagram(arr)
#   new_arr = []
#   arr.each_with_index do |word, index|
#     word = word.split('')
#     word = word.sort()
#     new_arr.push([word.join(''), index])
#   end
#   new_arr = new_arr.sort()
#   indices = []
#   new_arr.each do |word_with_index|
#     indices.push(word_with_index[1])
#   end
#   new_list = []
#   indices.each do |index|
#     new_list.push(arr[index])
#   end
# end
#
# anagram(['cat', 'dog', 'tac', 'god', 'act'])


def anagram(arr)
  new_arr = []
  arr.each_with_index do |word, index|
    word = word.split('').sort()
    new_arr.push([word.join(''), index])
  end
  indices = []
  new_arr.sort().each do |word_with_index|
    indices.push(word_with_index[1])
  end
  new_list = []
  indices.each do |index|
    new_list.push(arr[index])
  end
  puts new_list
end

anagram(['cat', 'dog', 'tac', 'god', 'act'])
