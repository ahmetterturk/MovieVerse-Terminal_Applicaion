require_relative '../Movie'
require_relative '../MovieController'


RSpec.describe Movie.new("Shrek", 3, 15) do
    it { is_expected.to have_attributes(:title => "Shrek") }
    it { is_expected.to have_attributes(:title => a_string_starting_with("S") ) }
    it { is_expected.to have_attributes(:year => 3) }
    it { is_expected.to have_attributes(:price => (a_value > 1) ) }
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

end

