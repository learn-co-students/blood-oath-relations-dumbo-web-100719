require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#followers
jesus = Follower.new("Jesus", "You're with me or against me.", 33)
mary = Follower.new("Mary", "Mother of God, b!", 13)
joseph = Follower.new("Joseph", "What am I doing here?", 16)
luke= Follower.new("Luke", "Scholar4lyfe", 44)

#cults
rajneesh = Cult.new("Rajneesh", "Oregon", 1990, "Bagwan!")
scientology = Cult.new("Scientology", "Los Angeles", 1960, "I'm clear!")
nge = Cult.new("NGE", "New York", 1975, "C.R.E.A.M.")
noi= Cult.new("NOI", "New York", 1975, "White Devils everywhere.")

#bloodoaths
rajneesh.recruit_follower(jesus)
scientology.recruit_follower(mary)
nge.recruit_follower(joseph)
nge.recruit_follower(luke)
noi.recruit_follower(luke)
jesus.join_cult(noi)





binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
