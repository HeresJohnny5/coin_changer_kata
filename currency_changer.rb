# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least 
# number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

def generate_currency(num)
	currency_hash = Hash.new

	if num >= 25
		currency_hash[:Quarter] = 1
	else
		currency_hash
	end
	currency_hash

end