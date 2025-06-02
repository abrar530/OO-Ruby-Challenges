class Pangram
  def self.pangram?(sentence)
    # Convert sentence to lowercase, remove non-letters, and get unique characters
    letters = sentence.downcase.scan(/[a-z]/).uniq

    # Check if there are exactly 26 unique letters
    letters.length == 26
  end
end

puts Pangram.pangram?("The quick brown fox jumps over the lazy dog")  # true
puts Pangram.pangram?("Hello, world!")                                # false

require 'minitest/autorun'
require_relative 'pangram'

class PangramTest < Minitest::Test
  def test_valid_pangram
    assert Pangram.pangram?("The quick brown fox jumps over the lazy dog")
  end

  def test_missing_letters
    refute Pangram.pangram?("This is not a pangram")
  end

  def test_empty_string
    refute Pangram.pangram?("")
  end

  def test_pangram_with_uppercase_and_punctuation
    assert Pangram.pangram?("The Quick, Brown Fox! Jumps over the Lazy Dog.")
  end
end
