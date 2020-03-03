
require './common_classes'
require './tyres_and_air_bags'
require './tyres_and_air_bags'

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

  def can_you(need)
    # Can you please change those tyres or get me the details of the car
    if need["car"].to_s == "sedan"
      sedan_cars = {:Ciaz => 4, :Suzuki_Dzire => 10}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(need,sedan_cars)

    elsif need["car"].to_s == "small_cars"
      small_cars = {:Celerio => 5, :Alto_K10 => 12}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(need,small_cars)
    end
  end
end
