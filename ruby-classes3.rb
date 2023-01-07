class Blurb
    attr_accessor :content, :time, :mood

    def initialize(mood, content="default content")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
    end
end

b1 = Blurb.new :hello
p b1
puts b1