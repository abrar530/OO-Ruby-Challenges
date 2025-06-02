require 'minitest/autorun'
require_relative 'hello_world'

class HelloWorldTest < Minitest::Test
  def test_says_hello_to_alice
    assert_equal "Hello, Alice!", HelloWorld.hello("Alice")
  end

  def test_says_hello_to_world_when_no_name_given
    assert_equal "Hello, World!", HelloWorld.hello
  end
end
