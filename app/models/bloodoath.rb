class BloodOath
    attr_accessor :initiation_date, :cult, :follower
    @@all = []

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def initiation_date
        # returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
        init_date = self.initiation_date
        init_date.strftime("%m/%d/%Y")
    end
    
    def self.all
        # returns an Array of all the blood oaths
        @@all
    end

end