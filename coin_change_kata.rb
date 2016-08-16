# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins
# needed to generate the value of cents.
# # Write a function which has a has including all keys/values

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

# Start a new repo
# Build up your coin_changer using tests. Commit to git after every test.

def test_hash_values?(amount, currency)
	# amount = 1 or "one"
	# currency = { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25 }
	if currency[:penny] == amount
		true
	else
		false
	end
end