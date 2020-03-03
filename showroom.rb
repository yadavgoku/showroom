require './vehicles'

# ---------------Showroom -------------->
class Showroom

  def initialize
    @vehicles = Vehicle.new
  end
  def showroom(need)
    @vehicles.vehicles(need)
  end
end


# Common needs are details,change_tyre,change_air_bags,order_air_bags,order_tyres,increese_stock,sell_car
# All these needs are passed as a hash
# ie, for change_tyre ,{"need" => "change_tyre", "car" => "sedan" , "brand" => "MRF"}
# for change_air_bags ,{"need" => "change_air_bags", "car" => "sedan" , "brand" => "sky"}
# for order air bags { "need" => "order_air_bags" ,"car" => "sedan","brand" =>"skyzet"}
# for icrease_stock {"need" => "increase_stock", "car" => "sedan" , "quantity" => 2}
# for sell car {"need" => "sell_cars", "car" => "compact" , "quantity" => 2}
change_tyre = {"need" => "change_tyre", "car" => "sedan" , "brand" => "MRF"}
order_air_bags = { "need" => "order_air_bags" ,"car" => "sedan","brand" =>"skyzet"}
sell_cars = {"need" => "sell_cars", "car" => "compact" , "quantity" => 2}
increase_stock = {"need" => "increase_stock", "car" => "sedan" , "quantity" => 2}

data = Showroom.new.showroom(increase_stock)

puts "\n\t\t\t\t\s\sHash returned \n\t\t\t\t<-------------->\n #{data}"