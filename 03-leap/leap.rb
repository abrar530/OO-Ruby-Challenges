class Leap
  def self.leap_year?(year)
    # A leap year is:
    # - divisible by 4
    # - not divisible by 100 unless also divisible by 400
    (year % 4 == 0) && (!(year % 100 == 0) || (year % 400 == 0))
  end
end

puts Leap.leap_year?(1996)  # true
puts Leap.leap_year?(1997)  # false
puts Leap.leap_year?(1900)  # false
puts Leap.leap_year?(2000)  # true

require 'minitest/autorun'
require_relative 'leap'

class LeapTest < Minitest::Test
  def test_leap_year
    assert Leap.leap_year?(1996)
  end

  def test_non_leap_year
    refute Leap.leap_year?(1997)
  end

  def test_century_non_leap
    refute Leap.leap_year?(1900)
  end

  def test_four_hundred_leap
    assert Leap.leap_year?(2000)
  end
end
