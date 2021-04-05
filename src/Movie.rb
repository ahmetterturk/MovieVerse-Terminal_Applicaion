class Movie 
    attr_accessor :title, :year, :price

    MOVIES = []

    def initialize(title, year, price)
        @id 
        @title = title
        @year = year 
        @price = price
        MOVIES << self
    end

    def self.display_movies
        MOVIES
    end

    def to_s
        "Title: #{@title} \nYear: #{@year}  \nPrice: #{@price}"
    end





end