require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

RSpec.describe Round do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    it 'exist' do 

        expect(deck).to be_instance_of(Deck)
    end

    it 'exist' do 
       

        expect(round).to be_instance_of(Round)
    end
    
    it "is the current card" do

        expect(round.current_card).to eq(card_1)
        
        binding.pry
        
    end

end