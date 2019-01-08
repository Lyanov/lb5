require 'minitest/autorun'
require_relative 'lr5_1'

class Test < Minitest::Unit::TestCase
  def test_1
    calc = Calculator.new(0)
    assert_in_epsilon(calc.calculate(0), 0.0)
  end

  def test_2
    calc = Calculator.new(2)
    assert_in_epsilon(calc.calculate(2), -0.17567509765588704)
  end

  def teardown
    p 'Test completed'
  end
end
