require 'a_nice_walk'

describe ANiceWalk do
  
  context 'without a pet' do
    it 'is impossible' do
      bob = double()
      bob.stub(:pets => [])
      expect do
        ANiceWalk.for(bob)
      end.to raise_error CantWalkWithoutPets
    end
  end
  
  context 'not pistachio icecream' do
    it 'is impossible' do
    expect {
      ANiceWalk.with_icecream('pistachio')
    }.to raise_error CantEatPistachioIceCream
    end
  end
  
  context 'with a pet' do
    it 'makes the walker happy' do
      bob = double()
      bob.stub(:pets => [stub])
      bob.should_receive(:update_attributes).with(:happiness => 20)
      ANiceWalk.for(bob)
    end
  end

end