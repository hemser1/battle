require 'player'

  describe Player do
    subject(:bob) { Player.new("Bob") }
    subject(:dave) { Player.new("Dave") }

    describe '#name' do
      it 'creates a Player object when named it' do
        expect(bob.name).to eq "Bob"
      end
    end

    describe '#receive_damage' do

      it 'reduces the player hit points' do
        allow(dave).to receive(:random_damage) { 3 }

        expect { dave.receive_damage }.to change{ dave.hp_points }.by(-3)
      end
    end
end
