require_relative "cc_kata.rb"
require "minitest/autorun"

class Coin_changer < Minitest::Test

	def test_for_quarter_to_return_1
		assert_equal({ :quarter => 1, :dime => 0, :nickle => 0, :penny => 0 }, money(25))	
	end

	def test_for_dime_to_return_1
		assert_equal({ :quarter => 0, :dime => 1, :nickle => 0, :penny => 0 }, money(10))	
	end

	def test_for_nickle_to_return_1
		assert_equal({ :quarter => 0, :dime => 0, :nickle => 1, :penny => 0 }, money(5))	
	end

	def test_for_penny_to_return_1
		assert_equal({ :quarter => 0, :dime => 0, :nickle => 0, :penny => 1 }, money(1))	
	end

	def test_for_random_amount_198
		assert_equal({ :quarter => 7, :dime => 2, :nickle => 0, :penny => 3 }, money(198))	
	end

	def test_for_random_amount_532
		assert_equal({ :quarter => 21, :dime => 0, :nickle => 1, :penny => 2 }, money(532))	
	end

	def test_for_random_amount_1027
		assert_equal({ :quarter => 41, :dime => 0, :nickle => 0, :penny => 2 }, money(1027))	
	end

	def test_for_random_amount_3562
		assert_equal({ :quarter => 142, :dime => 1, :nickle => 0, :penny => 2 }, money(3562))	
	end

end