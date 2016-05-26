require_relative 'bike'

class DockingStation
	attr_reader :docked_bikes, :capacity

  def initialize
    @docked_bikes = []
    @full = false
    @capacity = 20
  end

	def release_bike
		if @docked_bikes == []
			raise "No bikes available."
		else 
      released_bike = @docked_bikes.pop
      @full = false
      released_bike
		end
	end
	
	def dock(bikes)
    bikes = [bikes].flatten    

    if @full
      raise "Station full."
    elsif bikes == []
      raise "No bikes in the input array"
    elsif n_of_input_bikes_small_enough?(bikes)
       (@docked_bikes << bikes).flatten!
       @full = true if @docked_bikes.length == @capacity
    else   
      raise 'Not enough capacity in dock to accommodate bikes in array'
    end
	end
	
	def has_bikes?
		if @docked_bikes.length != 0 
      true
    else
      false
    end
	end

private

  def n_of_input_bikes_small_enough?(bikes)
    (@docked_bikes.length + bikes.length) <= @capacity
  end

end
