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

  describe '#current_turn' do
    it 'returns player one' do
      expect(game.current_player).to eq playerone
    end

    it 'returns player two after a turn' do
      game.change_turn
      expect(game.current_player).to eq playertwo
    end
  end

  describe '#opponent' do
    it 'returns player two' do
      expect(game.opponent).to eq playertwo
    end

    it 'returns player one after a turn' do
      game.change_turn
      expect(game.opponent).to eq playerone
    end
  end

  describe '#change_turn' do
    it 'changes whos turn it is after an attack' do
      game.change_turn
      expect(game.current_player).to eq playertwo
   end
  end
end