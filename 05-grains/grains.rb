puts Grains.square(1)   # 1
puts Grains.square(2)   # 2
puts Grains.square(3)   # 4
puts Grains.square(64)  # 2**63
puts Grains.total       # 2**64 - 1

require 'minitest/autorun'
require_relative 'grains'

class GrainsTest < Minitest::Test
  def test_square_1
    assert_equal 1, Grains.square(1)
  end

  def test_square_2
    assert_equal 2, Grains.square(2)
  end

  def test_square_3
    assert_equal 4, Grains.square(3)
  end

  def test_square_64
    assert_equal 9_223_372_036_854_775_808, Grains.square(64)
  end

  def test_total
    assert_equal 18_446_744_073_709_551_615, Grains.total
  end

  def test_invalid_square
    assert_raises(ArgumentError) { Grains.square(0) }
    assert_raises(ArgumentError) { Grains.square(65) }
  end
end
