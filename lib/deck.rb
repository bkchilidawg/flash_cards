class Deck 
    attr_reader :cards, :count
    def initialize(cards)
        @cards = cards
        @count = cards.length 
        @category_deck = nil 
    end
    def cards_in_category(category_filter)
        @category_deck = @cards.select { |card| card.category == category_filter }
    end
    


end