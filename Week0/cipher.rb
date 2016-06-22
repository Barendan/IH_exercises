def solve_cipher(string, shift)
  string.bytes.map do |x|
	  case x
		when (65..90) then
		  x += shift
		  x -= 26 if x > 90
	  	when (97..126) then
	    x += shift
	    x -= 26 if x > 122
	  	when
	  	(x == "z")
			x = "a"
				next
		when(x == "Z")
				x = "A"
				next
		else
	    x
	  end
	  x.chr
  end.join
end

puts "Input string:"
string = gets.chomp
=begin puts "Shift factor:" 
shift = gets.chomp.to_i
=end
shift = -3
puts "Caesar Cipher:"
puts solve_cipher(string, shift)



solve_cipher("ifmmp", -1)
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)



=begin def solve_cipher(string, key)
	key %= 26
    result = string.split("").map do |i|
        if i == " "
            i
        else
            low_char = (i =~ /[a-z]/? "a" : "A")
            ((i.ord + key - new.ord)%26 +new.ord).chr
        end
    end
    result.join
     
end
=end
