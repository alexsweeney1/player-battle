require 'player'

describe Player do

  subject(:aadam) { Player.new('Aadam') }

  describe '#name' do
    it 'knows its name' do
      expect(aadam.name).to eq 'Aadam'
    end
  end
end

