def caesar_cipher(sentence, shift_factor)
	changed_sentence = sentence.split("").map!.each do |x|
		if x.ord >= 60 && x.ord <= 90
			y = x.ord + shift_factor
			if y > 90
				y -= 26
      elsif y < 60
        y += 26
			end
			x = y.chr 
		elsif x.ord >= 97 && x.ord <= 122
			z = x.ord + shift_factor
			if z > 122
				z -= 26
      elsif z < 97
        z+= 26
			end
			x = z.chr
    else
      x = x
		end
	end
	return changed_sentence.join
end

puts caesar_cipher("What a string!", -5)

			