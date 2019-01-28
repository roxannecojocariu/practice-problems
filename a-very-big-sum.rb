# HackerRank
#
# Calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.
#
# Function Description
#
# Complete the aVeryBigSum function in the editor below. It must return the sum of all array elements.
#
# aVeryBigSum has the following parameter(s):
#
# ar: an array of integers .
# Input Format
#
# The first line of the input consists of an integer .
# The next line contains  space-separated integers contained in the array.
#
# Output Format
#
# Print the integer sum of the elements in the array.
def aVeryBigSum(ar)
    sum = 0
    ar.each do |element|
        sum += element
    end
    return sum
end
