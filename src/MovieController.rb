require_relative './Movie'

module MovieController

    def self.list 
        movies = Movie.display_movies
        if movies.length == 0 
            puts "All movies are sold out"
        else 
            puts Movie::display_movies 
        end
    end

    def self.sell 
        print "Movie Title: "
        title = gets.chomp
        print "Release Date: "
        date = gets.chomp 
        while true
            print "Selling Offer: "
            offer = gets.chomp.to_f
            if offer > 15 
                puts "That is too expensive, The most you can sell for is $15: "
            else 
                break
            end
        end
        
        movie = Movie.new(title, date, offer)
    end

    def self.buy 

    end

    def self.show
    end

    def self.update
    end

end