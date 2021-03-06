# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least 
# number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

def generate_change(cents)
	change = {}
	dime_value = 10

	if cents >= 20
		change[:dime] = cents/dime_value
		cents = cents - 20
	end

	if cents >= 10
		change[:dime] = 1
		cents = cents - 10
	end

	if cents >= 5
		change[:nickel] = 1
		cents = cents - 5
	end

	if cents >= 1
		change[:penny] = cents
	end
	change

end