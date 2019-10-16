class Follower
    attr_reader :age
    attr_accessor :name, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all 
    end

    def cults
        blood_oath_for_curr_follower = BloodOath.all.select do |blood_oath|
            blood_oath.follower == self
        end
        blood_oath_for_curr_follower.map do |blood_oath|
            blood_oath.cult
        end
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end


end 