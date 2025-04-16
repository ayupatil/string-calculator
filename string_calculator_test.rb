require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_that_empty_string_should_return_0
    assert_equal 0, StringCalculator.add('')
  end
end