class Cult
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all 
        @@all 
    end

    def recruit_follower(follower)
        BloodOath.new(self,follower)
    end

    def get_followers
        BloodOath.all.select do |blood_oath|
            blood_oath.cult == self
        end
    end

    def cult_population
        self.get_followers.count 
    end

    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.find do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult|
            #binding.pry
            cult.founding_year == founding_year
        end
    
    end

    def average_age
        total = self.get_followers.reduce(0) do |acc, curr_cult|
            acc += curr_cult.follower
        end
        total/self.get_followers.length
    end

end