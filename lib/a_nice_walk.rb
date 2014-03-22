class ANiceWalk
  
  def self.for(person)
    raise CantWalkWithoutPets.new if person.pets.empty?
    person.update_attributes(:happiness =>20)
  end
  
  def self.with_icecream(type)
    if type == 'pistachio'
      raise CantEatPistachioIceCream.new
    end
  end

end

class CantWalkWithoutPets < Exception
end

class CantEatPistachioIceCream < Exception
end
