require_relative './Movie.rb'
require_relative './MovieController'
require_relative './movie_list'
require 'tty-prompt'
require 'pastel'

prompt = TTY::Prompt.new
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
   input = prompt.select("What would you like to do?", %w(Buy Sell View Show Exit), symbols: { marker: "\u{1F4FD} " })

   if input == 'Buy'
      MovieController::buy
   end

   if input == 'Sell'
      MovieController::sell
   end

   if input == 'Show'
      MovieController::show
   end

   if input == 'View'
      MovieController::list
   end

   puts
end until input == 'Exit'