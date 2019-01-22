#timed coding challenge for prospective employer

def function_solution(a)
  highest_unit = a.sort.last
  horizontal_strokes = 1
  highest_unit_strokes = 0

  if a.length == 2
    puts highest_unit
    return highest_unit
  end

  a.each_with_index do |element, index|
    right_neighbor = a[index + 1]
    left_neighbor = a[index - 1]
    right_neighbor_index = index
    left_neighbor_index = index
    if element != 1
      if element == right_neighbor
        while index >= a.length || element == right_neighbor
          right_neighbor_increase = right_neighbor_index += 1
          right_neighbor = a[right_neighbor_increase]
        end
      else element != right_neighbor
        horizontal_strokes += 1
      end
      if element == highest_unit
        if right_neighbor == nil || left_neighbor > right_neighbor
          highest_unit_strokes = highest_unit - left_neighbor + 1
        else right_neighbor > left_neighbor
          highest_unit_strokes = highest_unit - right_neighbor + 1
        end
        highest_unit_strokes += 1
      end
    end
  end
  puts horizontal_strokes + highest_unit_strokes
end

array1 = [1, 3, 2, 1, 2, 1, 5, 3, 3, 4, 2]
array2 = [2, 3, 1, 4, 4, 1, 2]
array3 = [5, 8]
array4 = [2, 2, 2, 2]
array5 = [6, 3, 5, 5, 6, 1]

function_solution(array1)
function_solution(array2)
function_solution(array3)
function_solution(array4)
