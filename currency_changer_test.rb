require_relative "currency_changer.rb" # This links the test to currency_changer.rb
require "minitest/autorun"
# require "minitest/autorun" is boilerplate

class TestCurrencyChanger < Minitest::Test 
# Class name MUST start w/ a capital letter and uses camelCase naming conventions
# < Minitest::Test is boilerplate and is case sensative

	def test_returns_empty_hash # function MUST start with 'test' and is case sensative
		assert_equal({}, generate_currency(0))
	end

	def test_returns_hash_with_key_quarter_when_passed_argument_twenty_five
		assert_equal({:Quarter => 1}, generate_currency(25))
	end

end