#timed coding challenge for prospective employer

def solution(a)
  bulbs_shine = 0
  first_bulb = a.sort.first
  first_bulb_on = ""

  a.each_with_index do |element, index|
    left_neighbor = a[index - 1]
    left_neighbor_index = index - 1
    if element == first_bulb
      first_bulb_on = "on"
      bulbs_shine += 1
    end

    if first_bulb_on == "on" && left_neighbor != nil
      if left_neighbor == element - 1
        bulbs_shine += 1
      end

      if left_neighbor > element || left_neighbor < element - 1
        while left_neighbor_index != -1 do
          left_neighbor_index -= 1
          left_neighbor = a[left_neighbor_index]
          if left_neighbor_index != -1 && left_neighbor != 0 && left_neighbor == element - 1
            bulbs_shine += 1
          end
        end
      end
    end
  end
  return bulbs_shine
end

solution([2, 1, 3, 5, 4])
solution([2, 3, 4, 1, 5])
