class Follower

  attr_reader :name, :life_motto, :age
  @@all = []

  def initialize(name, life_motto, age)
    @name = name
    @life_motto = life_motto
    @age = age

    @@all << self
  end

  def join_cult(cult)
    BloodOath.new(cult, self)
  end

  def bloodoaths
    BloodOath.all.select {|bloodoath| bloodoath.follower == self}
  end

  def cults
    bloodoaths.map {|bloodoath| bloodoath.cult}
  end


  def self.all
    @@all
  end

  def self.of_a_certain_age(age_to_find)
    self.all.select { |follower| follower.age >= age_to_find }
  end


end
