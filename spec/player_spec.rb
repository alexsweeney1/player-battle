require 'player'

describe Player do

  subject(:aadam) { Player.new('Aadam') }
  subject(:alex) {Player.new('Alex')}

  describe '#name' do
    it 'knows its name' do
      expect(aadam.name).to eq 'Aadam'
    end
  end

  describe '#hp' do
    it 'knows its HP' do
      expect(aadam.hp).to eq(described_class::DEFAULT_HP)
    end
  end

  describe '#receive_damage' do
    it 'cause a player to lose 10HP' do
      expect { aadam.receive_damage }.to change { aadam.hp }.by -10
    end
  end

end

