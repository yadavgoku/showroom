require './common_classes'


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
  def can_you(need)

    # Can you please change those tyres or get me the details of the car
    if need["car"].to_s == "compact"
      compact_cars = {:Maruthi_S_Cross => 5}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(need,compact_cars)

    elsif need["car"].to_s == "regular"
      regular_cars = {:Vitara_Brezza => 8}
      # Calling a common class
      #  Yes we can do that
      yes_we_can(need,regular_cars)
    end
  end
end
