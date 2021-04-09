require_relative './Movie'
require_relative './movie_list'
require 'tty-table'
require 'colorize'

module MovieController

    def self.list
        movies = Movie.display_movies

        def self.rows(movies) 
            ary = movies.map do |movie|
                if not movie.nil?
                    [ movie.id, movie.title, movie.year, "$#{movie.price}".colorize(:green) ]
                end
            end
            ary.compact
        end

        def self.index(movies)
            return puts("All movies are sold out") unless movies.length > 0 
            table = TTY::Table.new(["ID".colorize(:blue),"Title".colorize(:blue), "Year".colorize(:blue), "Price".colorize(:blue)], rows(movies))
            puts table.render(:unicode)
        end

        index(movies)
    end


    def self.sell 
        print "Movie Title: "
        title = gets.chomp

        while true
            print "Release Date: "
            date = gets.chomp.to_i 
            if date > 2021 || date < 1950
                puts "The date has to be between 1950 - 2021"
            else 
                break
            end
        end
        while true
            print "Selling Offer: "
            offer = gets.chomp.to_i
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
            rows.push(['Id'.colorize(:green), movie.id])
            rows.push(['Title'.colorize(:green), movie.title])
            rows.push(['Year'.colorize(:green), movie.year])
            rows.push(['Price'.colorize(:green), "$#{movie.price}"])
        end

        def self.show_movie(movie)
            table = TTY::Table.new(["Property".colorize(:magenta), "Contents".colorize(:magenta)], rows(movie))
            puts table.render(:unicode)
        end

        show_movie(movie)
    end
    

end