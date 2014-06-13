##ultimately, put this into PRY, after putting in test.rb
#car.damages << Damage.new(description: 'bump', cost 750)
##THEN, put this into pry to get value, with damages
##car.value

require_relative 'car'

class UsedCar < Car
  DEPRECIATION_PER_MILE = 0.000001

  attr_accessor :mileage
  attr_reader :damages

  def initialize(mileage:, **attributes)
    ##Super = reference to PARENT that exists w/in this class
    ########Refers to value of attributes in CAR class
    ##############You need to list attributes in parentheses to indicate that
    #you are referring to the attributes in the super, in addition to the MILEAGE
    super(attributes)
    @mileage = mileage
    @damages = []
  end

  def damaged?
    damages.any?
  end

  def value
    super - damages.map(&:cost).reduce(0, &:+)
                                ####THIS IS HOW YOU SUM AN ARRAY OF INTERGERS

    ###calls VALUE method on SUPER class
    #####   msrp * depreciation THEN MAKE METHOD
    ####super - (msrp * (mileage * MILEAGE_DEPRECIATION))

    ###########  &: = calls "symbol#to_proc," passes it as though you passed it as
    ########### calls method on each instance on damages

    #***********takes array of damages and calls cost ; then sums cost
    ###generates a block:
    #starts from zero, then keeps running damage total; for each element, adds on cost


    ###auto-generates block


    ####super - damages.map { |damage| damage.cost}.reduce(0){|sum, cost| sum + cost}


  end

  private
  ###DONT NEED TO CALL THIS OUTSIDE OF USED CAR CLASS
  ##all methods below this class are private

  ###THEN ADD ON DEPRECIATION FACTOR FROM SUPER


  ###NOTE: HERE, BECAUSE YOU REFER TO 'SUPER' WITHIN DEPRECIATION DEF,
  ###YOU ARE CALLING THE VALUE FROM THE CAR CLASS AND OVER-WRITING IT FOR THIS,
  ####THE INSTANCES OF USED_CAR

  #####WITHIN THIS CONTEXT, SUPER = PARENT_DEPRECIATION

  def depreciation
    super + (mileage * DEPRECIATION_PER_MILE)
    ####(Time.now.year -year) * ANNUAL_DEPRECIATION
  end
end
