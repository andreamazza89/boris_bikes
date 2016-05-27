class Bike
  attr_writer :status

  def initialize
    @status = true
  end

  def working?
    @status
  end
end
