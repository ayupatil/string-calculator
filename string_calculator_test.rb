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

  def test_that_two_comma_separated_numbers_should_return_their_sum
    assert_equal 3, StringCalculator.add('1,2')
    assert_equal 10, StringCalculator.add('3,7')
  end

  def test_that_it_can_handle_an_unknown_amount_of_numbers
    assert_equal 6, StringCalculator.add('1,2,3')
    assert_equal 15, StringCalculator.add('1,2,3,4,5')
  end

  def test_that_it_allows_new_lines_as_separators
    assert_equal 6, StringCalculator.add('1\n2,3')
    assert_equal 8, StringCalculator.add('1\n2\n5')
  end
end