require_relative "./actor.rb"
require_relative "./character.rb"
require_relative "./movie.rb"
require_relative "./movie_character.rb"
require_relative "./show.rb"
require_relative "./show_character.rb"
require "pry"

# Entering information for Tom Cruise, Ethan Hunt, 
# and Mission Impossible
tom_cruise = Actor.new("Tom Cruise")
ethan_hunt = Character.new("Ethan Hunt", tom_cruise)
mi = Movie.new("Mission Impossible")
ethan_hunt_mi = MovieCharacter.new(mi, ethan_hunt )

henry_cavill = Actor.new("Henry Cavill")
august_walker = Character.new("August Walker", henry_cavill)
august_walker_mi = MovieCharacter.new(mi, august_walker)


analyze_this = Movie.new("Analyze This")

# Entering information for Lisa Kudrow, Phoebe Buffay, 
# and Friends
lisa_kudrow = Actor.new("Lisa Kudrow")
friends = Show.new("Friends")
phoebe = Character.new("Phoebe Buffay", lisa_kudrow)
phoebe_friends = ShowCharacter.new(phoebe, friends)

mi_tv = Show.new("Mission Impossible")
ethan_hunt_mi_tv = ShowCharacter.new(ethan_hunt, mi_tv)

laura_sobel = Character.new("Laura Sobel", lisa_kudrow)
laura_sobel_at = MovieCharacter.new(analyze_this, laura_sobel)

mi.characters
analyze_this.characters



binding.pry
0
