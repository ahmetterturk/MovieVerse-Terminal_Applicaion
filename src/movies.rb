require_relative './Movie.rb'
require_relative './MovieController'
require 'pastel'

django = Movie.new('Django Unchained', '2015', 30)
hobbit = Movie.new('The Hobbit', '2000', 20)
harry_potter = Movie.new('harry Potter', '2001', 40)

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

puts pastel.blue(banner)
puts 
puts "Welcome to MovieVerse"

begin
   puts "What would you like to do?"
   puts "Buy Movies\nSell Movies\nView Movies\nCheckout Movie\nExit"
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