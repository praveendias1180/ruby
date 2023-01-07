# Ruby: Main Blurbalizer Class
class Blurbalizer
    def initialize(title)
        @title  = title
        @blurbs = [] # A fresh clean array for storing Blurbs
    end
  
    def add_a_blurb(mood, content)
        # The << means add to the end of the array
        @blurbs << Blurb.new(mood, content)
    end
  
    def show_timeline
        puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
    
        @blurbs.sort_by { |t|
            t.time
        }.reverse.each { |t|
            puts "#{t.content.ljust(40)} #{t.moodify} #{t.time}"
        }
    end
end

# Burb Class
class Blurb
    attr_accessor :content, :time, :mood

    def initialize(mood, content="default content")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
    end

    def moodify
        if    @mood == :sad
          return ":-("
        elsif @mood == :happy
          return ":-)"
        # Add other moods here
        end
    
        # The default mood
        ":-|"
     end
end
  
puts "##############################################################################"
myapp = Blurbalizer.new "The Big Blurb"
p myapp

puts "##############################################################################"
myapp.add_a_blurb :moody, "Praveens Blurb"
myapp.show_timeline

puts "##############################################################################"
myapp.add_a_blurb :sad, "2nd Blurb"
myapp.show_timeline

puts "##############################################################################"
myapp.add_a_blurb :happy, "Final Blurb"
myapp.show_timeline