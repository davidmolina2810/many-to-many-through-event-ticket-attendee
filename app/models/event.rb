class Event

  attr_reader :name, :total_cost, :ticket_price, :venue

  @@all = [] # holds every instance of Event

  def initialize(name, cost, ticket_price, venue)
    @name = name
    @total_cost = cost
    @ticket_price = ticket_price
    @venue = venue
    @@all << self # add self instance to all instances of Event
  end

  def sell_to_break_even 
    if profits < self.total_cost
      diff = self.total_cost - profits
      return (diff / self.ticket_price).round
    else
      return 0
    end
  end

  def attendees
    return tickets.map {|ticket| ticket.attendee}
  end

  def average_age #returns avg age of Event attendees
    return attendees.sum {|attend| attend.age} / attendees.length
  end
    
  def self.all 
    return @@all
  end

  private
  def tickets # returns all ticket instances for this event
    return Ticket.all.select {|ticket| ticket.event == self}
  end

  def profits # returns total profits from ticket sales
    return tickets.length * self.ticket_price
  end


end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
