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

	def test_returns_hash_with_key_quarter_value_one_key_nickel_value_one_key_penny_value_three_when_passed_argument_thirty_eight
		assert_equal({ :Quarter => 1, :Dime => 1, :Penny => 3 }, generate_currency(38))
	end

	def test_returns_hash_with_key_quarter_value_one_key_nickel_value_one_when_passed_argument_thirty
		assert_equal({ :Quarter => 1, :Nickel => 1 }, generate_currency(30))
	end

	def test_returns_hash_with_key_quarter_value_one_key_penny_value_one_when_passed_argument_twenty_six
		assert_equal({ :Quarter => 1, :Penny => 1 }, generate_currency(26))
	end

	def test_returns_hash_with_key_quarter_value_one_when_passed_argument_twenty_five
		assert_equal({ :Quarter => 1 }, generate_currency(25))
	end

	def test_returns_hash_with_key_dime_value_one_key_nickel_value_one_key_penny_value_three_when_passed_argument_eighteen
		assert_equal({ :Dime => 1, :Nickel => 1, :Penny => 3 }, generate_currency(18))
	end

	def test_returns_hash_with_key_dime_value_one_key_nickel_value_one_when_passed_argument_fifteen
		assert_equal({ :Dime => 1, :Nickel => 1 }, generate_currency(15))
	end

	def test_returns_hash_with_key_dime_value_one_key_penny_value_two_when_passed_argument_twelve
		assert_equal({ :Dime => 1, :Penny => 2 }, generate_currency(12))
	end

	def test_returns_hash_with_key_dime_value_one_when_passed_argument_ten
		assert_equal({ :Dime => 1 }, generate_currency(10))
	end

	def test_returns_hash_with_key_nickel_value_one_key_penny_value_one_when_passed_argument_six
		assert_equal({ :Nickel => 1, :Penny => 1 }, generate_currency(6))
	end

	def test_returns_hash_with_key_nickel_value_one_when_passed_argument_five
		assert_equal({ :Nickel => 1 }, generate_currency(5))
	end

	def test_returns_hash_with_key_penny_value_three_when_passed_argument_three
		assert_equal({ :Penny => 3 }, generate_currency(3))
	end

	def test_returns_hash_with_key_penny_value_two_when_passed_argument_two
		assert_equal({ :Penny => 2 }, generate_currency(2))
	end

	def test_returns_hash_with_key_penny_value_one_when_passed_argument_one
		assert_equal({ :Penny => 1 }, generate_currency(1))
	end

end