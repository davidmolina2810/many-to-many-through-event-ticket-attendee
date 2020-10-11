class Ticket

    attr_accessor :attendee, :event

    @@all = [] # holds all instances of Ticket

    def initialize(attendee, event)
        @attendee = attendee    
        @event = event
        @@all << self # on initialization, add self instance to all instances
    end

    def self.all
        return @@all
    end
    
end

# Ticket.all
    # Returns an array of all Ticket instances
