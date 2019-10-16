class Cult

  attr_reader :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)
  end

  def bloodoaths
    BloodOath.all.select {|bloodoath| bloodoath.cult == self}
  end

  def followers
    bloodoaths.map {|bloodoath| bloodoath.follower}
  end

  def cult_population
    followers.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_to_find)
    self.all.find { |cult| cult.name == name_to_find }
  end

  def self.find_by_location(location_to_find)
    self.all.select { |cult| cult.location == location_to_find }
  end

  def self.find_by_founding_year(founding_year_to_find)
    self.all.select { |cult| cult.founding_year == founding_year_to_find }
  end

end
