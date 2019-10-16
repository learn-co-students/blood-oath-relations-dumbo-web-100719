class Cult
  @@all = []
  attr_accessor :name, :location, :founding_year, :slogan
  def initialize(name,location,founding_year,slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  #class methods
  def self.all
    @@all 
  end

  def self.find_by_name(follower_name)
    new_cult = BloodOath.all.select do |oath|
      if oath.followers.name == follower_name
        oath.cult
      end
    end
    new_cult[0].cult
  end

  def self.find_by_location(cult_location)
    new_cult = BloodOath.all.select do |oath|
      if oath.cult.location == cult_location
        oath.cult
      end
    end
    new_cult.map {|cult| cult.cult}.uniq
  end

  def self.find_by_founding_year(year)
    new_cult = BloodOath.all.select do |oath|
      if oath.cult.founding_year == year
        oath.cult
      end
    end
    new_cult.map {|cult| cult.cult}.uniq
  end
  #instance methods
  
  def recruit_follower(follower, initiation_date)
    BloodOath.new(self, follower, initiation_date)
  end

  def cult_population
    population = BloodOath.all.select do |oath|
      oath.cult == self
    end
    population.size
  end

end