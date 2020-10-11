class Venue

  attr_reader :name, :location, :rental_fee

  @@all = [] # holds all instances of Venue

  def initialize(name, location, rental_fee)
    @name = name
    @location = location
    @rental_fee = rental_fee
    @@all << self # add each self instance of Venue to all instances of Venue
  end

  def events
    return tickets.map {|ticket| ticket.event}.uniq
  end

  def revenue
    return (events.length * self.rental_fee).round(2)
  end

  def attendees
    return tickets.map {|event| event.attendee}.uniq
  end

  def self.all
    return @@all
  end

  def self.guest_lists

    binding.pry
  end
  
  private
  def tickets
    return Ticket.all.select {|ticket| ticket.event.venue == self}
  end

end