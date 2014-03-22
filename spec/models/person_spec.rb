require 'spec_helper'

describe Person do
  it 'can have pets' do
  bob = Person.create!
  charlie = Pet.create!
  bob.pets << charlie
  bob.reload.pets.should == [charlie]
  end
end