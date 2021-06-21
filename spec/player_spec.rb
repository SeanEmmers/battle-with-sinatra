require 'player'

describe Player do
  subject(:sean) { Player.new('Sean') }
  subject(:tarun) { Player.new('Tarun') }

  describe '#name' do
    it 'returns the name' do
      expect(sean.name).to eq 'Sean'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(sean.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { sean.receive_damage }.to change { sean.hit_points }.by(-10)
    end
  end

  describe '.attack' do
    it 'damages the player' do
      expect(sean).to receive(:receive_damage)
      tarun.attack(sean)
    end
  end
  
end