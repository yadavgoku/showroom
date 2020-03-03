# ---------------Basic -------------->

class Basic
  def details(need ,mfg_date)
    puts "Brand : #{need["brand"]}"
    puts "Manufacturing date : #{mfg_date}"
    need['mfg'] = mfg_date
    true
  end
end
# ------------- Common class for suv and cars ------>


class YesWeCan
  def yes_we_can(need,for_cars)
    if need["need"] == "details"
      for_cars.each { |car,nos| puts "-> #{car}" }
      puts "These cars are available under sedan class\n"
      puts "\nCommon features \n -------------"
      puts "Tyres : #{@number_of_tyres = 4}"
      puts "Air bags : #{@number_of_airbags = air_bags} \n -------------"

    end

    if need["need"] == "change_tyres"
      @tyre.new_tyre(need,for_cars)
    elsif need["need"] == "change_air_bags"
      @airbags.new_air_bags(need,for_cars)
    elsif need["need"] == "order_tyres"
      @tyre.order_tyres(need,for_cars)
    elsif need["need"] == "order_air_bags"
      @airbags.order_air_bags(need,for_cars)
    elsif need["need"] == "increase_stock"
      increase_stock(need,for_cars)
    elsif need["need"] == "sell_cars"
      sell_car(need,for_cars)
    end
  end
  def sell_car(need,for_cars)
    for_cars.each do |car, nos|
      for_cars[car] = nos - need["quantity"].to_i
      puts "-> #{need["quantity"].to_i}  #{car}s are sold and #{for_cars[car]} #{car}s are left"
      need['for_cars'] = for_cars
    end
    need
  end
  def increase_stock(need,for_cars)
    for_cars.each do |car, nos|
      for_cars[car] = nos.to_i + need["quantity"].to_i
      puts "-> #{car}s stock are increased from #{nos} to #{for_cars[car]}"
      need['for_cars'] = for_cars

    end
    need
  end
end
