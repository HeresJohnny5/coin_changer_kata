require_relative "coin_class_kata.rb"
require "minitest/autorun"

class TestCoinChanger < Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))	
	end

end