# build methods for .new total subtract add and clear
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/calculator"

class CalculatorTest < Minitest::Test
  def test_it_has_add
    calculator = Calculator.new
   calculator.add 34
   assert_equal 34, calculator.total
  end

  def test_it_has_subtract
    calculator = Calculator.new
    calculator.subtract(10)
    assert_equal -10, calculator.total
    calculator.subtract(15)
    assert_equal -25, calculator.total
  end

  def test_it_has_clear
    calculator = Calculator.new
    calculator.add(50)
    calculator.clear
    assert_equal 0, calculator.total
  end

  def test_it_has_total
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end


end
