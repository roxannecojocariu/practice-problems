# 6 kyu Duplicate Encoder
#
# CHALLENGE:
# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
# Examples:
#
# "din" => "((("
#
# "recede" => "()()()"
#
# "Success" => ")())())"
#
# "(( @" => "))(("
#
#
# SOLUTION:

def duplicate_encode(word)
  split_word = word.downcase.split(//)
  new_string = ""
  split_word.map do |current_letter|
    if word.count(current_letter) > 1
      new_string += ")"
    else
      new_string += "("
    end
  end
  new_string
end
