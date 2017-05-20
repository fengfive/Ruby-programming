dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  words_hash = Hash.new(0)
  judge = true
  words.downcase!
  words_array = words.split(//)
  for i in 0...dictionary.length
    dictionary_array = dictionary[i].split(//)
    for j in 0...words_array.length
      if words_array[j] == dictionary_array[0]
        word_length = dictionary_array.length
        for k in 1...word_length
          if words_array[j+k] != dictionary_array[k]
            judge = false
          end
        end
        if judge
          words_hash[dictionary[i]] += 1
        end
      end
    end
  end
  return words_hash
end

puts substrings("lowb", dictionary)
