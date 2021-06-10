require 'player'

describe Player do
  subject(:sean) { Player.new('Sean') }

  describe '#name' do
    it 'returns the name' do
      expect(sean.name).to eq 'Sean'
    end
  end
end