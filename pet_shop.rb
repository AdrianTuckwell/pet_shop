require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end


  def pet_type(name)
    #Find a pet with the name 
    #use .find to pet.name that matches the name your passing in 
    #then return the pet type form the found pet
    found_pet = @pets.find { |pet| pet.name == name }
    return found_pet.type
  end

  def get_names_of_all_pets_of_type(type)
    #find pets by type
    pet_objects = @pets.select {|pet| pet.type == type }
    pet_objects.map {|pet| pet.name}
  end
  
  def get_number_of_pets_costing_at_least(cost)
    pet_cost = @pets.select{ |pet| pet.price >= cost}.map.count

  end
    
end