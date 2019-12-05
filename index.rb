# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

class Bender
    attr_reader :money_found
      
    def initialize
      @money_collected = []
      @rooms_visited = []
      @rooms_left_to_visit = []
    end
      
    def detect_new_bank_notes(room)
       @rooms_left_to_visit << room 
    end
      
    def navigate_building
      @rooms_left_to_visit.each do |room|
       rooms_visited << room 
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