class Followers 
  @@all =[]
  attr_accessor :name, :age, :life_motto
  def initialize(name,age,life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end 
  
  def self.of_a_certain_age(age)
    ages = BloodOath.all.select do |oath|
      if oath.followers.age <= age
        oath.followers
      end
    end
    ages.map {|age|age.followers}
  end

  #instance methods
  def cults
    my_cult = BloodOath.all.select do |oath|
      if oath.followers == self
        oath.cult
      end
    end
    my_cult.map {|cult| cult.cult}
  end

  def join_cult(cult,initiation_date)
    BloodOath.new(cult,self,initiation_date)
  end
end