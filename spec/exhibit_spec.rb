require 'rspec'
require './lib/exhibit'

RSpec.describe Exhibit do
  let(:exhibit) { Exhibit.new }

  describe '#initialize' do
    it 'exist' do
      expect(exhibit).to be_instance_of(Exhibit)  
    end
  end
end
