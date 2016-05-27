require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY= 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes= []
    @capacity= capacity
  end

  def release_bike
    if empty?
      raise "sorry, no bikes"
    elsif @bikes.last.working?
      @bikes.pop
    else
      "Bike is broken!"
    end

  end

  def docking_bike(bike)
    raise "sorry, dock is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.size == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.size == 0
  end

end
