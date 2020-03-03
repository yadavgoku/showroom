require './common_classes'

# ---------------Tyres -------------->

# Inheriting base class
class Tyres < Basic
  def new_tyre(need,for_cars)
    for_cars.each { |car,nos| puts "Tyres of #{nos} #{car}'s are replaced"  }
    puts "Tyre details \n -------------"
    flag = details(need,"2-2-1998")
    if flag
      need['for_cars'] = for_cars
    end
    need
  end
  def order_tyres(need,for_cars)
    puts "Tyres odered successfully for"
    for_cars.each { |car,nos| puts "-> #{nos} - #{car}"  }
    puts "Air bag details \n -------------"
    flag = details(need,"2-2-1998")
    if flag
      need['for_cars'] = for_cars
    end
    need

  end
end

# ---------------Air bags -------------->

# Inheriting base class
class AirBags < Basic
  def new_air_bags(need,for_cars)
    for_cars.each { |car,nos| puts "Air bag of #{nos} #{car}'s are replaced"  }
    puts "Air bag details \n -------------"
    flag = details(need,"2-2-1998")
    if flag
      need['for_cars'] = for_cars
    end
    need
  end
  def order_air_bags(need,for_cars)
    puts "Air bags ordered successfully for"
    for_cars.each { |car,nos| puts "-> #{nos} - #{car}"  }
    puts "Air bag details \n -------------"
    flag = details(need,"2-2-1998")
    if flag
      need['for_cars'] = for_cars
    end
    need
  end
end

