require_relative './Movie'
require 'tty-table'


module MovieController


    def self.list
        
        movies = Movie.display_movies

        def self.rows(movies) 
            ary = movies.map do |movie|
                [ movie.id, movie.title, movie.year, movie.price ]
            end
            ary.compact
        end


        def self.index(movies)
            return puts("All movies are sold out") unless movies.length > 0 

            table = TTY::Table.new(
                ["ID","Title", "Year", "Price"], 
                rows(movies)
            )
            puts table.render(:unicode)
        end

        index(movies)

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

    def self.buy(id)
        if movie = Movie.find(id)
            movie.delete
        end
    end

    def self.show
    end

    def self.update
    end

end