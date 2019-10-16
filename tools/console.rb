require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

socionics = Cult.new("Socionics","Dumbo",1942,"We love socionics")
harry_potter = Cult.new("Harry Potter","Hogwarts", 1901,"We are wizards")
game_of_thrones = Cult.new("Game of Thrones","Kings Landing", 1642, "Iron Throne")
vikings = Cult.new("Vikings","Dumbo", 800, "Odin")

micah = Followers.new("Micah", 25, "I love socionics")
susan = Followers.new("Susan", 34, "Socionics!")

bri = Followers.new("Bri", 25, "Gryfindor")
hope = Followers.new("Hope", 22, "Ravenclaw")

hamidou = Followers.new("Hamidou", 23, "Blood and Fire")
randy = Followers.new("Randy", 29, "Winter is coming")

nick = Followers.new("Nick", 32, "Save Odin")
annie = Followers.new("Annie", 30, "Heathen")


bloodOath1 = BloodOath.new(socionics,micah,"1992/03/10")
bloodOath2 = BloodOath.new(socionics,susan,"1999/09/23")

bloodOath3 = BloodOath.new(harry_potter,bri,"2000/04/14")
bloodOath4 = BloodOath.new(harry_potter,hope, "1962/05/22")

bloodOath5 = BloodOath.new(game_of_thrones,hamidou,"1996/02/23")
bloodOath6 = BloodOath.new(game_of_thrones,randy, "1900/12/05")

bloodOath7 = BloodOath.new(vikings,nick,"1980/01/21")
bloodOath8 = BloodOath.new(vikings,annie,"1600/11/23")


binding.pry

0 # just in case pry is buggy and exits
