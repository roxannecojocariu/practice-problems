# Complete the solution so that the function will break up camel casing, using a space between words.
#
# Example
# solution('camelCasing') # => should return 'camel Casing'

def solution(string)
  def is_upcase?(letter)
    ("A".."Z").cover?(letter)
  end

  def letter?(letter)
    letter = letter.downcase
    ("a".."z").cover?(letter)
  end

  count = 0
  string.split('').each_with_index do |letter, index|
    index = index + count
    if is_upcase?(letter) && letter?(string[index - 1]) && letter?(string[index + 1])
      string.insert(index, ' ')
      count += 1
    end
  end
  return string
end

solution('tellProblemOldGetDifferent')
