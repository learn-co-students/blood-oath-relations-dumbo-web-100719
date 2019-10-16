class BloodOath
  @@all = []
  attr_accessor :cult, :followers, :initiation_date
  def initialize(cult, followers,initiation_date)
    @cult = cult
    @followers = followers
    @initiation_date = initiation_date
    @@all << self
  end
  #  class Methods
  def self.all
    @@all
  end

  def self.first_oath
    self.all[0].followers
  end
  # instance  Methods
end


# Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")