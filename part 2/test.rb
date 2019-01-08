require './str_correct.rb'
require 'minitest/autorun'

# Testing class
class MyTest < Minitest::Test
  def setup
    letters = ('a'..'z').to_a + ('A'..'Z').to_a
    @min1 = 'a'
    @min2 = 'b'
    @max1 = 'x' * 25
    @max2 = 'z' * 25
    @words = Array.new(10) do
      (2..rand(3..10)).map { letters[rand(letters.length)] }.join
    end
  end

  def test_one_minmax
    70.times do
      i1 = rand(@words.length - 2)
      i2 = rand(@words.length - 2)
      i2 += 1 if i1 == i2
      i1, i2 = i2, i1 if i2 < i1
      str_corr = @words.shuffle # String for correcting function
      str_res = str_corr.dup # String for expected result
      str_res.insert(i1, @min1).insert(i2, @max2)
      str_corr.insert(i2 - 1, @min1).insert(i1, @max2)

      assert_equal(str_res.join(' '),
                   correct_str(str_corr.join(' ')))
    end
  end

  def test_several_minmax
    70.times do
      i1 = rand(@words.length - 4)
      i2 = rand(@words.length - 4)
      i2 += 2 if i1 == i2
      i2 += 1 if i1 + 1 == i2
      i1, i2 = i2, i1 if i2 < i1
      str_corr = @words.shuffle # String for correcting function
      str_res = str_corr.dup # String for expected result
      str_res.insert(i1, @max1)
             .insert(i1 + 1, @min2)
             .insert(i2, @min1)
             .insert(i2 + 1, @max2)
      str_corr.insert(i1, @min1)
              .insert(i1 + 1, @min2)
              .insert(i2, @max1)
              .insert(i2 + 1, @max2)

      assert_equal(str_res.join(' '),
                   correct_str(str_corr.join(' ')))
    end
  end

  def teardown; end
end
