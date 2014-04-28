require 'date'

class Car

  attr_reader :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def age
    Date.today.year - year
  end

  def to_s
    "#{year} #{make} #{model}"
  end
end
