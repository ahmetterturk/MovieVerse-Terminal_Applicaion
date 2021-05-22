require_relative '../Movie'
require_relative '../MovieController'


describe Movie do 
    it 'should create a movie with title' do 
        title = 'Lord of rings'
        year = 2012
        price = 24
        movie = Movie.new(title, year,price)
        expect(movie.title).to eq(title) 
    end
end

RSpec.describe Movie do

    describe "instance variables" do 
        subject { Movie.new("a", 1, 1) }

        it "should respond to title" do 
            expect(subject).to respond_to :title
        end

        it "should respond to year" do 
            expect(subject).to respond_to :year 
        end

        it "should respond to price" do 
            expect(subject).to respond_to :price 
        end
    end

    describe "save" do
        it "should increase movie file size" do
            movie = Movie.new("Shrek", 2000, 20)
            expect { movie.save }.to change(Movie::MOVIES, :size).by(1) 
        end
    end

end

