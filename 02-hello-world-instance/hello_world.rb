# Define a HelloWorld class with an instance method `hello`
class HelloWorld
  def initialize(name)
    @name = name
  end

  def hello(greetee = 'World')
    "Hello, #{greetee}. My name is #{@name}!"
  end
end
require 'minitest/autorun'
require_relative 'hello_world'

class HelloWorldTest < Minitest::Test
  def test_default_greeting
    person = HelloWorld.new('Wally')
    assert_equal 'Hello, World. My name is Wally!', person.hello
  end

  def test_greeting_with_name
    person = HelloWorld.new('Wally')
    assert_equal 'Hello, Alice. My name is Wally!', person.hello('Alice')
  end
end
