require 'date'

DEPRECIATION = 0.05
MARKUP = 0.15
# DEPRECIATION = miles_depreciation + year_depreciation
#DEPREIATION = (Date.today.year-year)*0.05
#### mileadge(-mileadge/10000)

class Car

  attr_reader :make, :model, :year_born, :msrp, :value
  attr_accessor :price

  def initialize(make, model, year_born, msrp)
    @make = make
    @model = model
    @year_born = year_born
    @msrp = msrp
    @value = value
    @price = price

  end

  def age
    Date.today.year - year_born
  end

  def depreciate_value
    value = mrsp - (age)*DEPRECIATION
  end

  def markup
    price = value*MARKUP
  end
end

car_first = Car.new('Toyota', 'Camry', 1994, 500)

puts "Here is your #{car_first.make} #{car_first.model}, from #{car_first.year_born}."
puts

puts "It is #{car_first.value}! Wait, no, just kidding. Really, it's #{car_first.price}"
puts car_first.inspect

# Car

# has a make, model, and year of manufacture
# has an MSRP (original retail price)
# has a value (MSRP modified by depreciation, taking the year of manufacture into account)
# all cars have a constant depreciation of 5% per year
# has a markup (can be set to any value, representing the car lot's profit margin)
# has a price (value modified by the markup)

# We'll be able to create a car lot that contains both new and used cars for sale, and used cars may have damages recorded.

# NEW CAR
# • has the same attributes as a used car
# • demerits = 0
# • Value = MSRP
# • Year = year_born
# • New_total_number_cars= .Counts


# UsedCar
# • has the same attributes as a new car
# • has a mileage
# • may have one or more damages (scuffed paint, missing hubcaps, etc.)
# o damage_hash = [type_of_damage, cost_of_damage]
# • has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# o used_value = MSRP – demerits
# • demerits = (total_cost_of_damage) – (total_depreciation)
# • total cost = value from damage_hash array
# • total_cost_of_damage = sum of values in damage_hash
# • total_depreciation = miles_depreciation + year_depreciation
# • $$$$$miles_depreciation = miles*.000001
# • year_depreciation = XXX((year_born…2014)*.05)
# • i = 1
# • loop
# • i +=1, i*0.05
# • break when (2014 - year_born) = i
# • sum = year depreciation


# o all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)
# • if miles > 0, puts miles_depreciation
# • $$$$$miles_depreciation = (miles_total)*.000001
# • mileage/10,000
# • date.today.year
# • else, miles_cost = 0
# • Used_total_number_cars =number of keys.counts

# Require ‘Date’
# Date.today.year

# Car
# • has a make, model, and year of manufacture
# o make—reader
# o model—reader
# o year_born—reader
# • has an MSRP (original retail price)
# o MSRP—reader
# o Final MSRP
# • has a value (MSRP modified by depreciation, taking the year of manufacture into account)
# o current_value—accessor
# • MSRP - demerits
# • all cars have a constant depreciation of 5% per year
# • has a manager markup
# o inflated_value = value + (inflated_value)
# • has a price (value modified by the manager markup)


# Damage
# • has a description
# • has a cost (how much it would cost to repair)







# CarLot
# • Name = Honest Tom’s Cars
# • Total_number_cars = New_total_number_cars + Used_total_number_cars
# • can retrieve the "lot value" (total price of all cars on the lot)
# • can retrieve a list of all cars matching a certain make, model, or year

# CarLot Hash
#   Key = car_id_code
# Value = array of:
#   [make, model, year, demerits, ]




# find total number of cars , count the keys

