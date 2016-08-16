# Assignment: Coin Changer:

# Write a function that takes a number of cents, and that returns a hash containing the least 
# number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny =>1}
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}
# eg. If 93 cents {:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}

# Build up your coin_changer using tests. Commit to git after every test.

require "minitest/autorun"
require_relative "coin_change_kata.rb" 
# refers to the main file 

class TestTicket < Minitest::Test 

	def test_if_hash_includes_amount_return_true
		currency = { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25 }
		amount = 1
		assert_equal(true, test_hash_values?(amount, currency))
	end

	def test_if_hash_does_not_include_amount_return_false
		currency = { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25 }
		amount = "one"
		assert_equal(false, test_hash_values?(amount, currency))
	end

end