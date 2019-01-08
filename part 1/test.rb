require './task1.rb'
require 'minitest/autorun'

# Testing class
class MyTest < Minitest::Test
  def setup
    # Read input values
    @values = []
    File.open('./test/input', 'r') do |file|
      file.each_line do |num|
        @values << num.to_f
      end
    end
    # Read calculated in other programm values
    @results = []
    File.open('./test/calculated_val', 'r') do |file|
      file.each_line do |num|
        @results << num.to_f
      end
    end
  end

  def test_500_values
    @values.each_with_index do |value, i|
      assert_in_delta(@results[i], calculate(value), 10**-6)
    end
  end

  def teardown; end
end
