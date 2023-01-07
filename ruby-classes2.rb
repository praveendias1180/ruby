class Blurb
    attr_accessor :content, :time, :mood
end

b1 = Blurb.new
p b1

b1.content = "hello"
p b1

b1.time = Time.now
b1.mood = :sick

p b1
puts b1