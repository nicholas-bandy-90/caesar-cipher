def cipher(string, shift)
  split_string = string.split('')
  ordinals = []
  encoded = []

	split_string.each do |c|
		if c.ord.between?(65,90)
			ordinals.push((c.ord + shift - 65)%26 + 65)
    	elsif c.ord.between?(97,122)
      		ordinals.push((c.ord + shift - 97)%26 + 97)
    	else
      		ordinals.push(c.ord)
		end
	end
	
	ordinals.each do |n|
		encoded.push(n.chr)
	end

	puts encoded.join('')

end