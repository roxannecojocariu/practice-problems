# 6 kyu WeIrD StRiNg CaSe
#
# CHALLENGE:
# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
#
# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
#
# Examples:
#
# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
#
#
# SOLUTION:

def weirdcase(string)
  final_string = []
  string.split(' ').map do |word|
    capitalized_words = []
    word.split('').map.with_index do |letter, index|
      if index % 2 == 0
        letter = letter.capitalize
      else
        letter
      end
      capitalized_words << letter
    end
    final_string << capitalized_words.join('')
  end
  return final_string.join(' ')
end


#refactored with combo of solutions I found after submitting
def weirdcase(string)
  string.split(' ').map do |word|
    word.split('').map.with_index do |letter, index|
      if index % 2 == 0
        letter.capitalize
      else
        letter
      end
    end.join('')
  end.join(' ')
end
