require 'game'

describe Game do

  let(:playerone) { double :player }
  let(:playertwo) { double :player  }
  subject(:game) { Game.new(playerone, playertwo) }


  describe '#attack' do
    it 'attacks another player' do
      expect(playerone).to receive(:receive_damage)
      subject.attack(playerone)
    end
  end

  describe '#playerone' do
    it 'returns player one' do
      expect(game.playerone).to eq playerone
    end
  end

  describe '#playertwo' do
    it 'returns player two' do
      expect(game.playertwo).to eq playertwo
    end
  end
end