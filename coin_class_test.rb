require_relative "coin_class_kata.rb"
require "minitest/autorun"

class TestCoinChanger < Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))	
	end

	def test_one_cent_returns_hash_with_one_penny
		assert_equal({:penny => 1}, generate_change(1))	
	end

	def test_two_cents_returns_hash_with_two_pennys
		assert_equal({:penny => 2}, generate_change(2))	
	end

	def test_five_cents_returns_hash_with_one_nickel
		assert_equal({:nickel => 1}, generate_change(5))	
	end

	def test_six_cents_returns_hash_with_one_nickel_one_penny
		assert_equal({:penny => 1, :nickel => 1}, generate_change(6))	
	end

	def test_seven_cents_returns_hash_with_one_nickel_two_pennys
		assert_equal({:penny => 2, :nickel => 1}, generate_change(7))	
	end

	def test_nine_cents_returns_hash_with_one_nickel_four_pennys
		assert_equal({:penny => 4, :nickel => 1}, generate_change(9))	
	end

	def test_ten_cents_returns_hash_with_one_dime
		assert_equal({:dime => 1}, generate_change(10))	
	end

	def test_eleven_cents_returns_hash_with_one_penny_one_dime
		assert_equal({:penny => 1, :dime => 1}, generate_change(11))	
	end

	def test_sixteen_cents_returns_hash_with_one_penny_one_nickel_one_dime
		assert_equal({:penny => 1, :nickel => 1, :dime => 1}, generate_change(16))	
	end

end