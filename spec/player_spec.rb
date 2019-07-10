require 'player'

  describe Player do
    subject(:bob) { Player.new("Bob") }
    subject(:dave) { Player.new("Dave") }

    describe '#name' do
      it 'creates a Player object when named it' do
        expect(bob.name).to eq "Bob"
      end
    end

    describe '#attack' do
      it 'damages other player' do
        expect(dave).to receive(:receive_damage)
        bob.attack(dave)
      end
    end

    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { dave.receive_damage }.to change{ dave.hp_points }.by(-10)
      end
    end
end
