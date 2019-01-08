require 'minitest/autorun'
require_relative 'lr5_2'

class Test < Minitest::Test
  def test_1
    assert_equal(corrector('Нанана лалала лалалала нанана', 'пам'), %w[Нанана лалала пам])
  end
end
