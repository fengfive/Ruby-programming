def bubble_sort(array)
  for i in 1...array.length
    for j in 0...(array.length - i)
      if array[j] < array[j + 1]
        next
      else
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  return array
end

def bubble_sort_by(array)
  for i in 1...array.length
    for j in 0...(array.length - i)
      value = yield(array[j], array[j + 1])
      if value <= 0
        next
      else value > 0
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  return array
end

puts bubble_sort([4,3,78,2,0,2])
puts (bubble_sort_by(["hi","hello","hey","shfjksf","sdfas"]) do |left,right|
  left.length - right.length
end)
