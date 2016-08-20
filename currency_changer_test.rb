require_relative "currency_changer.rb" # This links the test to currency_changer.rb
require "minitest/autorun"
# require "minitest/autorun" is boilerplate

class TestCurrencyChanger < Minitest::Test 
# Class name MUST start w/ a capital letter and uses camelCase naming conventions
# < Minitest::Test is boilerplate and is case sensative

	# def test_returns_hash_with_key_quarter_value_two_when_passed_argument_fifty
	# 	# function MUST start with 'test' and is case sensative
	# 	assert_equal({:Quarter => 2}, generate_currency(50))
	# end

	def test_returns_hash_with_key_quarter_when_passed_argument_twenty_five
		assert_equal({:Quarter => 1}, generate_currency(25))
	end

	# def test_returns_hash_with_key_dime_when_passed_argument_ten
	# 	assert_equal({:Dime => 1}, generate_currency(10))
	# end

	# def test_returns_hash_with_key_nickel_when_passed_argument_five
	# 	assert_equal({:Nickel => 1}, generate_currency(5))
	# end

	def test_returns_hash_with_key_penny_when_passed_argument_one
		assert_equal({:Penny => 1}, generate_currency(1))
	end

end