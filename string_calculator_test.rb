require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_that_empty_string_should_return_0
    assert_equal 0, StringCalculator.add('')
  end

  def test_that_single_number_should_return_that_number
    assert_equal 5, StringCalculator.add('5')
    assert_equal 17, StringCalculator.add('17')
  end
end