# ---------------Basic -------------->

class Basic
  def details(make ,mfg_date)
    puts "Brand : #{make}"
    puts "Manufacturing date : #{mfg_date}"
  end
end

# ---------------Tyres -------------->

# Inheriting base class
class Tyres < Basic
  def new_tyre(brand,for_cars)
    puts "Tyre details \n -------------"
    details(brand,"2-2-1998")
    for_cars.each { |car,nos| puts "Tyres of #{nos} #{car}'s are replaced"  }
  end
end

# ---------------Air bags -------------->

# Inheriting base class
class AirBags < Basic


  def new_air_bag(brand,for_cars)
    puts "Air bag details \n -------------"
    details(brand,"2-2-1998")
    for_cars.each { |car,nos| puts "Air bag of #{nos} #{car}'s are replaced"  }

  end
end

# ------------- Common class for suv and cars ------>


class YesWeCan
  def yes_we_can(change,details,for_cars,air_bags)
    if details == true
      for_cars.each { |car,nos| puts "-> #{car}" }
      puts "These cars are available under sedan class\n"
      puts "\nCommon features \n -------------"
      puts "Tyres : #{@number_of_tyres = 4}"
      puts "Air bags : #{@number_of_airbags = air_bags} \n -------------"

    end
    if change == "tyre"
      @tyre.new_tyre("barath",for_cars)
    elsif change == "air_bag"
      @airbags.new_air_bag("skyblue",for_cars)
    end
  end
end

# ---------------Car -------------->

# Inheriting common class
class Car < YesWeCan

  def initialize
    # Composition
    @tyre = Tyres.new
    @airbags = AirBags.new
  end

  def car_names
    # Available car classes
    %w(sedan small_cars)
  end

  def can_you(car,change = nil,details = nil )
    # Can you please change those tyres or get me the details of the car
    if car.to_s == "sedan"
      sedan_cars = {:Ciaz => 4, :Suzuki_Dzire => 10}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(change,details,sedan_cars,air_bags=4)

    elsif car.to_s == "small_cars"
      small_cars = {:Celerio => 5, :Alto_K10 => 12}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(change,details,small_cars,air_bags=4)
    end
  end
end

# ---------------SUV -------------->

# Inheriting common class
class Suv < YesWeCan
  def initialize
    @tyre = Tyres.new
    @airbags = AirBags.new
  end
  def suv_names
    %w(compact regular)
  end
  def can_you(car,change = nil,details = nil )
    # Can you please change those tyres or get me the details of the car
    if car.to_s == "compact"
      compact_cars = {:Maruthi_S_Cross => 5}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(change,details,compact_cars,air_bags=2)

    elsif car.to_s == "regular"
      regular_cars = {:Vitara_Brezza => 8}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(change,details,regular_cars,air_bags=4)
    end
  end
end

# ---------------Vehicle -------------->


class Vehicle
  def initialize
    @car = Car.new
    @suv = Suv.new
  end
  def vehicles(car,change = nil,details = nil)
    if @car.car_names.include? car.to_s
      @car.can_you(car,change,details)


    elsif @suv.suv_names.include? car.to_s
      @suv.can_you(car,change,details)
    end
  end
end

# ---------------Showroom -------------->
class Showroom
  def initialize
    @vehicles = Vehicle.new
  end
  def replace_tyres(car,change=nil,details=nil )
    @vehicles.vehicles(car,change,details)
  end
end


Showroom.new.replace_tyres("small_cars","air_bag",true )