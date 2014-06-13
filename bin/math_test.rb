require 'date'

class NewCar
  attr_reader :make, :model, :year#, :msrp, :mileage
  attr_accessor :premkup_price#, :damages

  def initialize(make, model, year, premkup_price)#, msrp, mileage, damages)
    #@serial = serial
    @make = make
    @model = model
    @year = year
    #@msrp = msrp
    #@mileage = mileage
    @premkup_price = premkup_price
    #@damages = damages
  end

    def date
      year = Date.today.year
    end

    def new_miles_price
      if year =  Date.today.year
        msrp = premkup_price
        mileage = 0
        damages = 0
      end
    end
end

car_first= NewCar.new('Toyota', 'Camry', '1994', 400)
car_first.make

puts "Here is your #{car_first.make} #{car_first.model}, from #{car_first.year}. It costs #{car_first.premkup_price}!"
#find by .select
