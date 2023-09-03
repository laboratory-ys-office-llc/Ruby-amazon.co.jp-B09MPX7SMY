# frozen_string_literal: true

# SampleClass is a demonstration class that can greet a given name.
class SampleClass
  attr_reader :name

  # Initializes a new instance of SampleClass.
  # @param name [String] The name to be greeted.
  def initialize(name)
    @name = name
  end

  # Outputs a greeting message to the console.
  def say_hello
    puts format('Hello, %s!', name)
  end
end

person = SampleClass.new('Alice')
person.say_hello
