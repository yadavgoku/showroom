require './cars'
require './suvs'

# ---------------Vehicle -------------->

class Vehicle

  def initialize
    @car = Car.new
    @suv = Suv.new
  end
  def vehicles(need)
    if @car.car_names.include? need["car"].to_s
      @car.can_you(need)


    elsif @suv.suv_names.include? need["car"].to_s
      @suv.can_you(need)
    else
      puts "sorry ,we haven't this types of vehicles"
    end
  end
end

