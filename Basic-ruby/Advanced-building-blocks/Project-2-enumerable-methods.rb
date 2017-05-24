module Enumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end

  def my_each_with_index
    for i in 0...self.length
      yield(self[i], i)
    end
  end

  def my_select
    result = []
    for i in 0...self.length
      result << self[i] if yield(self[i])
    end
    return result
  end

  def my_all?
    judge = true
    for i in 0...self.length
      if yield(self[i]) == false
        judge = false
        break
      end
    end
    judge
  end

  def my_any?(&block)
    return self.my_select(&block).length > 0
  end

  def my_none?(&block)
    return my_select(&block).length == 0
  end

  def my_count(&block)
    return my_select(&block).length
  end

  def my_map(proc = nil)
    result = []
    if proc
      self.my_each {|x| result << proc.call(x)}
    else
      self.my_each {|x| result << yield(x)}
    end
    result
  end

  def my_inject
    sum = self[0]
    for i in 1...self.length
      sum = yield(sum, self[i])
    end
    sum
  end
end

def multiply_els(array)
  puts array.my_inject {|sum, num| sum * num}
end
