class Follower
    attr_accessor :name,:age,:life_motto
    @@all = []
    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        # returns an Array of this follower's cults
        BloodOath.all.map {|blood| blood.follower == self}
    end

    def join_cult(date,cult)
        # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        BloodOath.new(date,cult,self)
        # cult.recruit_follower(date,cult,self)
    end

    def self.all
        # returns an Array of all the followers
        @@all
    end

    def self.of_a_certain_age(age)
        # takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
        self.all.select {|follower| follower.age >= age}
    end

end