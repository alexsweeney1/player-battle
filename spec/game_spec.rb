require 'game'

describe Game do

  subject(:game) {Game.new}
  let(:playerone) { double :player }
  let(:playertwo) { double :player  }


  describe '#attack' do
    it 'attacks another player' do
      expect(playerone).to receive(:receive_damage)
      subject.attack(playerone)
    end
  end
end