class Attendee

    attr_reader :name, :age 

    @@all = [] # holds all instances of Attendee

    def initialize(name, age)
      @name = name
      @age = age
      @@all << self # add every instance of Attendee to all instances
    end

    def events 
      return tickets.map {|ticket| ticket.event}
    end

    def money_spent
      return tickets.sum {|ticket| ticket.event.ticket_price}.round(2)
    end

    def venues
     return tickets.map {|ticket| ticket.event.venue}.uniq
    end

    private
    def tickets # returns all tickets self has as array
      return Ticket.all.select {|ticket| ticket.attendee == self}
    end
end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events