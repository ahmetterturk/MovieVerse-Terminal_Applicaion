require_relative './Movie'
require 'tty-table'
require_relative './movie_list'


module MovieController

    def self.list
        movies = Movie.display_movies

        def self.rows(movies) 
            ary = movies.map do |movie|
                if not movie.nil?
                    [ movie.id, movie.title, movie.year, movie.price ]
                end
            end
            ary.compact
        end

        def self.index(movies)
            return puts("All movies are sold out") unless movies.length > 0 
            table = TTY::Table.new(["ID","Title", "Year", "Price"], rows(movies))
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
        movie.save
    end


    def self.buy(id)
        if movie = Movie.find(id)
            movie.delete
        end
    end


    # def self.buy(id)
    #     ary = MovieList.movies.map do |movie|
    #         if movie[:id] == id 
    #             MovieList.movies.delete(movie)
    #         end
    #     end
    #     ary
    # end


    def self.show(id)
        movie = Movie.find(id)

        def self.rows(movie)
            rows = []
            rows.push(['Id', movie.id])
            rows.push(['Title', movie.title])
            rows.push(['Year', movie.year])
            rows.push(['Price', movie.price])
        end

        def self.show_movie(movie)
            table = TTY::Table.new(["Property", "Contents"], rows(movie))
            puts table.render(:unicode)
        end

        show_movie(movie)
    end
    

end