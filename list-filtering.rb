# 7 kyu List Filtering
#
# CHALLENGE:
# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.
#
#
# SOLUTION:

def filter_list(l)
  new_list = []
  l.each do |element|
    if element.is_a? Integer
      new_list << element
    end
  end
  new_list
end
