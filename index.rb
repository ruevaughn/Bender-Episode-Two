module FuturamaLand
  class Bender
    attr_reader :money_collected

    def initialize
      @money_found = []
      @rooms_visited = []
      @rooms_left_to_visit = []
      @next_room = false
      @current_room = nil
      @current_room_number = 0
      @current_room_level = 0
    end

    def detect_new_room(room)
      @rooms_left_to_visit << room
    end

    def navigate_building
      @rooms_left_to_visit.each do |room|
        visit_room(room)
      end
    end

    def visit_room(room)
      @rooms_visited << room

      @rooms_left_to_visit - [room]
      # if @current_room.udd
    end

    def money_found
      @money_colllected.inject(0){|money_found, room| running_total + room.money }
    end
  end

  class Room
    attr_reader :number
    attr_reader :money
    attr_reader :first_door
    attr_reader :second_door

    def initialize(attrs)
      attrs.split(' ')
      @number      = attrs[0]
      @money       = attrs[1]
      @first_door  = attrs[2]
      @second_door = attrs[2]
    end
  end

  class Building
    attr_reader :total_rooms_count
    attr_reader :rooms

    def initialize
      @rooms = []
    end

    def add_room_count(count)
      @total_rooms_count = count
    end

    def add_room(room)
      @rooms << room
    end
  end
end


n = gets.to_i
bender = FuturamaLand::Bender.new
building = FuturamaLand::Building.new
count = 0
n.times do
  count += 1
  room_attrs = gets.chomp
  if count == 1
    STDERR.puts room_attrs
    building.add_room_count(room_attrs)
  else
    STDERR.puts room_attrs
    room = FuturamaLand::Room.new(room_attrs)
    building.add_room(room)
  end
end

bender.navigate_building
bender.money_collected

puts "answer"
