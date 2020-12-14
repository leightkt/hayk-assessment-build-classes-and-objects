require 'pry'

class Building
    attr_accessor :name, :tenants
    attr_reader :address

    @@all = []

    def initialize(name, address, floors, tenants)
        @name = name
        @address = address
        @floors = floors
        @tenants = tenants
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_tenants
        sum = all.reduce(0) do |sum, building|
            sum + building.tenants
        end
        (sum / all.length.to_f).round
    end

    def placecard
        self.name + " " + self.address
    end

    def average_tenants_per_floor
        @tenants / @floors
    end
end


building1 = Building.new("Empire State Building", "New York", 800, 1000000)
building2 = Building.new("White House", "Washington, DC", 12, 3500)
building3 = Building.new("Shack Down the Road", "Denver", 3, 12)

binding.pry

