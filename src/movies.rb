require_relative './Movie.rb'
require_relative './MovieController'
require_relative './movie_list'
require 'pastel'

pastel = Pastel.new
banner = """

                                 ,MMM8&&&.
                            _...MMMMM88&&&&..._
                         .::'''MMMMM88&&&&&&'''::.
                        ::     MMMMM88&&&&&&     ::
                        '::....MMMMM88&&&&&&....::'
                           `''''MMMMM88&&&&''''`
                                 'MMM8&&&'
         
███    ███  ██████  ██    ██ ██ ███████ ██    ██ ███████ ██████  ███████ ███████ 
████  ████ ██    ██ ██    ██ ██ ██      ██    ██ ██      ██   ██ ██      ██      
██ ████ ██ ██    ██ ██    ██ ██ █████   ██    ██ █████   ██████  ███████ █████   
██  ██  ██ ██    ██  ██  ██  ██ ██       ██  ██  ██      ██   ██      ██ ██      
██      ██  ██████    ████   ██ ███████   ████   ███████ ██   ██ ███████ ███████ 

"""

puts pastel.yellow(banner)
puts 
puts "Welcome to MovieVerse"

begin
   puts "What would you like to do?"
   puts "For Buy and Show options, add the id of the movie, e.g(buy 2, show 7)"
   puts
   puts "Buy\nSell\nView\nShow\nExit"
   input, id = gets.chomp.downcase.split(' ')

   if input == 'buy'
      MovieController::buy(id)
   end

   if input == 'sell'
      MovieController::sell
   end

   if input == 'show'
      MovieController::show(id)
   end

   if input == 'view'
      MovieController::list
   end

   puts
end until input == 'exit'