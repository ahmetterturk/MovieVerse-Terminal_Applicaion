class Movie 
    attr_accessor :title, :year, :price
    attr_reader :id 

    MOVIES = []

    @instances = 0

    def initialize(title, year, price)
        # @id = MOVIES.length + 1
        @id = rand(500)
        @title = title
        @year = year 
        @price = price
        MOVIES << self
    end

    def self.instances
       @instances 
    end

    def self.instances=(value)
        @instances = value
    end

    def self.find(id)
        MOVIES.detect { |movie| movie.id == id }
    end

    def delete
        return if @id.nil? 

        idd = MOVIES.index { |movie| movie && movie.id == @id }
        @id = MOVIES[idd] = nil 
    end

    def self.display_movies
        MOVIES
    end


    def to_s
        "ID: #{@id} \nTitle: #{@title} \nYear: #{@year}  \nPrice: #{@price}"
    end

    puts
end