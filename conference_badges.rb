# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect do |name| 
     badge_maker(name)
    end
end

def assign_rooms(attendees)
    all = []
    attendees.each_with_index do |name, i|
        all << "Hello, #{name}! You'll be assigned to room #{i +=1}!"
    end
    all
end

def printer(name)
    batch_badge_creator(name).each {|badge| puts badge}
    assign_rooms(name).each {|info| puts info}
end
