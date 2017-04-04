
# Define a dictionary array with words.
# Define method substrings that checks how many times
# each word in the dictionary can be found
# in a string of any kind.

dictionary = ["do", "not", "go", "gentle", "into", "that", "good", "night", "rage", "against", "the", "dying", "of", "light",
			  "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "side", "beside", "be"]

def substrings(string, dictionary)

	substrings = {}
	string.downcase!

	if string =~ /\s/
		all_words = string.split(/\W/)
		dictionary.each do |word|
			substrings[word] = 0
			all_words.each do |string_word|
				substrings[word] += 1 if string_word.include? word
			end
		end
	else
		dictionary.each do |word|
			substrings[word] = 0
			substrings[word] +=1 if string.include? word
		end
	end

	substrings.delete_if { |key, value| value == 0 }
	puts substrings
end

substrings("below",dictionary)
substrings("Do not go gentle into that good night",dictionary)