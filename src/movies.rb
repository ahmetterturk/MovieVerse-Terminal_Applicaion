require_relative './Movie.rb'

django = Movie.new('Dhango Unchained', '2015', 30)
hobbit = Movie.new('The Hobbit', '2000', 20)
harry_potter = Movie.new('harry Potter', '2001', 40)

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

puts banner
puts Movie.display_movies