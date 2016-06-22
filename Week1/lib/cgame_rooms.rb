
class Room
	attr_reader(:exit, :next_room, :message, :error, :item)
	def initialize(exit,next_room,message, error, item)
		@exit = exit
		@next_room = next_room
		@message = message
		@error = error
		@item = item
	end

end


# class Character
# 	def initialize(name)
# 		@name = name
		
# 	end

# end

class Game
	def initialize
		@rooms = []
		@current_position = 0
		@inventory = []
	end

	def add_room(new_room)
		@rooms.push(new_room)
	end

	# def add_item(item_name)
	# 	@inventory.push(item_name)
	# end

	def start
			current_room = @rooms[@current_position]
			input = nil
  			puts current_room.message
  			puts "Options:#{current_room.exit}"

				print "> "
  				input = gets.chomp

  			if input == current_room.exit
  				if @current_position == 5
  					puts "KNOCK OUT! You win."
  					return
  				end
    			@current_position += 1
    			start
    		elsif current_room.item
    			add_item
    		else
    			puts ""
    			puts current_room.error
    			start
  			end
  			end
end




game.Room.new(first_room, 2,0)
game = Game.new(rooms, "2.0")

class Room
  attr_accessor(:text)

  def initialize(options)
    @text = options[:text]
    @end = options[:end]
  end

  def end?
    return @end
  end
end