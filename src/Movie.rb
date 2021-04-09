require 'yaml'

class Movie 
    attr_accessor :title, :year, :price
    attr_reader :id 

    MOVIES = YAML.load(File.read('movies.yml')) rescue []

    @instances = 0

    def initialize(title, year, price)
        @title = title
        @year = year 
        @price = price
    end

    def self.instances
       @instances 
    end

    def self.instances=(value)
        @instances = value
    end

    def self.find(id)
        return unless id 
        MOVIES.detect { |movie| movie.id == id.to_i }
    end

    def delete
        return if @id.nil?
        idd = MOVIES.index { |movie| movie && movie.id == @id }
        @id = MOVIES[idd] = nil 
        MOVIES.reject! { |item| item.nil? || item == '' }
        File.open('movies.yml', 'w') { |file| file.write(MOVIES.to_yaml) }
    end

    def self.display_movies
        MOVIES
    end

    def save
        @id = rand(100..500)
        self.class.instances += 1
        MOVIES << self
        File.open('movies.yml', 'w') do |file|
            file.write(MOVIES.to_yaml)
        end
    end

end