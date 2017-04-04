# Define a method that implements the Caesar cipher 
# to a specific string with a specific factor.

def caesar_cipher text,factor
	
		cipher_text = text.split("").map do |letter|
			letter_number = letter.ord

			if letter =~ /\W|\d/
				letter = letter  							
			elsif letter.upcase.ord - factor.to_i < 65
				letter = (letter_number + 26 - factor.to_i).chr
			elsif letter.upcase.ord.between?(66,90)
				letter = (letter_number - factor.to_i).chr
			end
		end
	
		cipher_text.join
end

puts "Please enter a sentence."

string = gets.chomp

puts "Now enter the shift factor for the Caesar cipher."

shift = gets.chomp

puts "This is how your string would like with the Caesar cipher:"

puts caesar_cipher(string,shift)