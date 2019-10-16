require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new("Cult 1", "NYC", 1999, "CRAZY")
cult_2 = Cult.new("Cult 2", "Philly", 2018, "DIE")

minseo = Follower.new("Minseo", 28, "YOLO")
vannida = Follower.new("Vannida", 27, "HELLO")
hera = Follower.new("Hera", 30, "HI")
tom = Follower.new("Tom", 25, "YO")
max = Follower.new("Max", 75, "HEY")

red_gang = BloodOath.new( cult_1, minseo)
blue_gang = BloodOath.new(cult_2, vannida)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
