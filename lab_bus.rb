class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def count_passengers
    return @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def remove()
    @passengers = []
  end

end
