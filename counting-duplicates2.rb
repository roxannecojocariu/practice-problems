# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
#
# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice
#

def duplicate_count(text)
  counter = 0
  uniq_text = text.downcase.split('').uniq
  uniq_text.each do |letter|
    if text.downcase.count(letter) > 1
      counter += 1
    end
  end
  return counter
end

#the way this is rn, it will go through every single letter like a, then a again for string below so it'll count twice.  i need a separate string with only the uniq picked out and use THAT to iterate through original string

duplicate_count("aabbcde")
