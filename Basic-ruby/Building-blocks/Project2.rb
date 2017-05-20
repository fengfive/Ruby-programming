def stock_picker(array)
  hash = Hash.new
  for latter_num in 1...array.length
    for num in 0...latter_num
      a = array[latter_num] - array[num]
      hash[a] = [num,latter_num]
    end
  end
  day = hash.max_by{|k, v| k}[1]
  return "Buy in #{day[0]}, sell in #{day[1]}"
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
