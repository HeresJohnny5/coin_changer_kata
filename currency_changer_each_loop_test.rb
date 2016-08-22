require_relative "currency_changer_each_loop.rb"
require "minitest/autorun"

class TestCurrencyChanger < Minitest::Test 

	def test_hash_returns_key_quarter_value_148_and_key_dime_value_two_and_key_penny_value_one
		assert_equal({ :Quarter => 148, :Dime => 2, :Penny => 1 }, generate_currency(37.21))
	end

	def test_hash_returns_key_quarter_value_40
		assert_equal({ :Quarter => 40 }, generate_currency(10.00))
	end

	def test_hash_returns_key_quarter_value_20
		assert_equal({ :Quarter => 20 }, generate_currency(5.00))
	end

	def test_hash_returns_key_quarter_value_4
		assert_equal({ :Quarter => 4 }, generate_currency(1.00))
	end

	def test_hash_returns_key_quarter_value_2
		assert_equal({ :Quarter => 2 }, generate_currency(0.50))
	end

	def test_hash_returns_key_quarter_value_1_and_key_dime_value_one_and_key_nickel_value_one_and_key_penny_value_three
		assert_equal({ :Quarter => 1, :Dime => 1, :Nickel => 1, :Penny => 3 }, generate_currency(0.43))
	end

	def test_hash_returns_key_quarter_value_one
		assert_equal({ :Quarter => 1 }, generate_currency(0.25))
	end

	def test_hash_returns_key_dime_value_one_and_key_nickel_value_one_and_key_penny_value_three
		assert_equal({ :Dime => 1, :Nickel => 1, :Penny => 3 }, generate_currency(0.18))
	end

	def test_hash_returns_key_dime_value_one_and_key_penny_value_three
		assert_equal({ :Dime => 1, :Penny => 3 }, generate_currency(0.13))
	end

	def test_hash_returns_key_dime_value_one
		assert_equal({ :Dime => 1 }, generate_currency(0.10))
	end

	def test_hash_returns_key_nickel_value_one_and_key_penny_value_one
		assert_equal({ :Nickel => 1, :Penny => 1 }, generate_currency(0.06))
	end

	def test_hash_returns_key_nickel_value_one
		assert_equal({ :Nickel => 1 }, generate_currency(0.05))
	end

	def test_hash_returns_key_penny_value_four
		assert_equal({ :Penny => 4 }, generate_currency(0.04))
	end

	def test_hash_returns_key_penny_value_two
		assert_equal({ :Penny => 2 }, generate_currency(0.02))
	end

	def test_hash_returns_key_penny_value_one
		assert_equal({ :Penny => 1 }, generate_currency(0.01))
	end

end