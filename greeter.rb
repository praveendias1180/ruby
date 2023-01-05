class Greeter
    attr_accessor :name
    def initialize(name = "World")
        @name = name
    end

    def say_hi
        puts "Hi #{@name.capitalize}"
    end

    def say_bye
        puts "Bye, #{@name.capitalize}"
    end
end

greeter = Greeter.new("praveen")
greeter.say_hi
greeter.say_bye

# puts Greeter.instance_methods
puts "#######################"
puts Greeter.instance_methods(false)

puts "#######################"
puts greeter.respond_to?("name")

greeter.name="New name"
greeter.say_hi
