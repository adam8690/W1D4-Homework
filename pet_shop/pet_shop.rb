
def pet_shop_name(shop)
return shop[:name]
end

def total_cash(shop)
return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, num_pets_sold)
return shop[:admin][:pets_sold] += num_pets_sold
end

def stock_count(shop)
return shop[:pets].length
end

def pets_by_breed(shop, breed)
pets = []
for pet in shop[:pets]
  if pet[:breed] == breed
    pets.push(pet)
  end
end
return pets
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end

  return nil
end

def remove_pet_by_name(shop, name)
for pet in shop[:pets]
  if pet[:name] == name
    shop[:pets].delete(pet)
  end
end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << [new_pet]
end

def customer_pet_count(customer)
# use .lenght or .size to return 0 on an empty array. Don't need to make a special zero case. 
return customer[:pets].length
end