# 7 kyu Two to One
#
# CHALLENGE:
# Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters,
#
# each taken only once - coming from s1 or s2.
# Examples: ``` a = "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) -> "abcdefklmopqwxy"
# a = "abcdefghijklmnopqrstuvwxyz" longest(a, a) -> "abcdefghijklmnopqrstuvwxyz" ```
#
#
#SOLUTION:

def longest(a1, a2)
  a1 << a2
  combined_strings = a1.split(//).sort
  letter = ""
  longest_array = []
  combined_strings.each do |current_letter|
    if letter != current_letter
      longest_array << current_letter
      letter = current_letter
    end
  end
  longest_array.join
end
