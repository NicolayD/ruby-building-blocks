# Define a method which takes an array with stock prices for consecutive days
# and returns an array with the best days to respectively buy and sell.

def stock_picker(array)

diff = array[0] - array[1]
lowest, highest = array[0], array[1]

	array.each do |first_price|
		index_num = array.index(first_price)
		array.each_with_index do |next_price, second_index|
			if second_index > index_num
				if (first_price - next_price) < diff
					diff = first_price - next_price
					lowest, highest = first_price, next_price
				end
			end
		end
	end
	
	puts "Buy on " + array.index(lowest).to_s + ", sell on " + array.index(highest).to_s
	puts "You'll buy at the price of #{lowest} and sell at #{highest}."
end

stock_picker([14,8,6,10,15,4,9,3])