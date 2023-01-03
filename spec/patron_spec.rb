require 'rspec'
require './lib/patron'

RSpec.describe Patron do
  let(:patron_1) { Patron.new("Bob", 20) }
  
  describe '#initialize' do
    it 'exists' do
      expect(patron_1).to be_instance_of(Patron)
    end

    it 'has readable attributes' do
      expect(patron_1.name).to eq("Bob")
      expect(patron_1.spending_money).to eq(20)
      expect(patron_1.interests).to eq([])
    end
  end

  describe '#add_interest' do
    it 'can add a patrons interest to the #interests array' do
      patron_1.add_interest("Dead Sea Scrolls")
      patron_1.add_interest("Gems and Minerals")

      expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end
  end
end