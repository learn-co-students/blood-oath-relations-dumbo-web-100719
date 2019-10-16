require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

join_time = "10/2/2019"
diego = Follower.new("Diego", 36, "Keep living")
alina = Follower.new("Alina", 24, "Meow")
javone = Follower.new("Javone", 23, "Vibes are good")

saint_cult = Cult.new("Saints","NYC", 1993, "We are all saints")
metro_cult = Cult.new("Metros", "Salt Lake City", 1899, "Metros!")
renegades_cult = Cult.new("Renegades", "San Francisco", 2007, "We never give up")

saint_cult.recruit_follower(join_time, saint_cult, diego)
saint_cult.recruit_follower(join_time, saint_cult,alina)
metro_cult.recruit_follower(join_time, metro_cult,javone)
metro_cult.recruit_follower(join_time, metro_cult,diego)
renegades_cult.recruit_follower(join_time, renegades_cult,javone)

saint_follower = saint_cult.followers
saint_follower_c = saint_cult.cult_population #2

metro_follower = metro_cult.followers
metro_follower_c = metro_cult.cult_population #2

renegades_follower = renegades_cult.followers
renegades_follower_c = renegades_cult.cult_population #1


find_by_name_saint = Cult.find_by_name("Saints")
find_by_name_metro = Cult.find_by_name("Metros")
find_by_name_blank = Cult.find_by_name("Some Cult")


find_by_location_NYC= Cult.find_by_location("NYC")
find_by_location_SF= Cult.find_by_location("San Francisco")

find_by_year_1899= Cult.find_by_founding_year(1899)
find_by_year_2007= Cult.find_by_founding_year(2007)


diego_join_renegades= diego.join_cult(join_time,renegades_cult)
javone_join_saint = javone.join_cult(join_time,saint_cult)



find_certain_age_20 = Follower.of_a_certain_age(20)
find_certain_age_33 = Follower.of_a_certain_age(33)
find_certain_age_40 = Follower.of_a_certain_age(40)





binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
