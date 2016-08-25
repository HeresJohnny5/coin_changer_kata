# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least 
# number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

def generate_change(cents)
	change = {}

	coin_values = { :dollar => 100, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1 }

	coin_values.each do |coin_name, coin_value|
		if cents >= coin_value
			coins = cents/coin_value
			change[coin_name] = coins
			cents = cents - (coin_value * coins)
		end	
	end
	change

end