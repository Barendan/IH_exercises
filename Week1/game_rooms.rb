# Game of Rooms
require_relative("lib/cgame_rooms.rb")


start_room = Room.new("E","second_room","To navigate around the rooms, type [n] for north, [s] for south, [e] for east and [w] for west:
The room has unicorns all over the walls. You see a door behind one of the unicorns on the east wall.",
"Oops, you bumped into the wall.","")

second_room = Room.new("N","third_room","You find the temperature to be uncomfortably hot. 
You are outside... on mars. To the north you see a ladder.","You don't want to be stuck on this planet anymore.","flashlight")

third_room = Room.new("W","fourth_room","The ladder broke halfway through your climb but you made it. 
You are now underground and there is a tunnel leading to the west.","There's nothing there.","")

fourth_room = Room.new("S","fifth_room","At the end of the tunnel, Elon Musk greets you and invites you to enter 
the interstellar spaceship. All you have to do is walk south.","Elon Musk is leaving without you.","")

fifth_room = Room.new("N","win_room","The spaceship launched but didn't make it too far. There's only one escape 
pod and it is located to your north. Will you make it inside before Mr. Musk?","What are you doing?! Trying to die?!","")

win_room = Room.new("hit","start_room","You wake up and realize it was all a dream. 
Leonardo de Caprio is sitting next to your bed with a sly look on his face.",
"Leo knocks you out instead.","")

my_game = Game.new
my_game.add_room(start_room)
my_game.add_room(second_room)
my_game.add_room(third_room)
my_game.add_room(fourth_room)
my_game.add_room(fifth_room)
my_game.add_room(win_room)

# newborn = Character.new("The Boss")

my_game.start




