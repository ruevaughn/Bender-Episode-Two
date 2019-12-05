# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

class Bender
    def initialize
        @bankk_notes = []
    end
    
    def detect_new_bank_notes(room)
       @bank_note_rooms << room 
    end
    
    def navigate_building
        @bank_notes_rooms.each do |note|
            note.money
        end
    end
end

class Room
    attr_reader :number
    attr_reader :money
    attr_reader :first_door
    attr_reader :second_door
    def initialize(attrs)
        attrs.split!(' ')
        @number      = attrs[0]
        @money       = attrs[1]
        @first_door  = attrs[2]
        @second_door = attrs[2]
    end
end


n = gets.to_i
bender = Bender.new
n.times do
    room_attrs = gets.chomp
    room = Room.new(room_attrs)
    bender.detect_new_bank_notes(room)
end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

puts "answer"
