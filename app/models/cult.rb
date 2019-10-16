class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :followers

    @@all = []
    
    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(date,cult,follower)
        # takes in an argument of a Follower instance and adds them to this cult's list of followers
       BloodOath.new(date, self, follower)
    end

    def followers
        BloodOath.all.select {|oath| oath.cult ==  self }
    end
    def cult_population
        # returns a Fixnum that is the number of followers in this cult
        followers.select {|follow| follow}.count
    end
    
    def self.all
        # returns an Array of all the cults
        @@all
    end

    def self.find_by_name(name)
        # takes a String argument that is a name and returns a Cult instance whose name matches that argument
        # self.all.select {|cult| cult.name == name}
        name = BloodOath.all.find {|blood| blood.cult.name == name}
        # name.map {|blood| blood.cult}
        # name.cult
        
    end

    def self.find_by_location(location)
        # takes a String argument that is a location and returns an Array of cults that are in that location
        # self.all.select {|cult| cult.location == location}
        location = BloodOath.all.find {|blood| blood.cult.location == location}.cult
        # location.map {|blood| blood.cult}
        # location.cult
    end

    def self.find_by_founding_year(year)
        # takes a Fixnum argument that is a year and returns all of the cults founded in that year
        # self.all.select {|cult| cult.founding_year == year}
        year = BloodOath.all.find {|blood| blood.cult.founding_year == year}.cult
        # year.map {|blood| blood.cult}
        # year.cult
        
    end

end