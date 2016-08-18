# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

def money(change)
	coins_value = { :quarter => 25, :dime => 10, :nickle => 5, :penny => 1 }
	correct_change = { :quarter => 0, :dime => 0, :nickle => 0, :penny => 0 }

	coins_value.each do |coin, value|
		while value <= change
			correct_change[coin] += 1
			change -= value
		end
	end
	correct_change
end