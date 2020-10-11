require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
jorge = Attendee.new('Jorge', 19)
ash = Attendee.new('Ash', 21)
david = Attendee.new('David', 22)

venue1 = Venue.new("Alegria Gardens", "Barker Cypress", 300)
venue2 = Venue.new("Fashion magazine", "Modelling Ln", 200)
venue3 = Venue.new("Meat Board", "Be a Jerk", 100)

woodstock = Event.new("Woodstock", 100, 25, venue1)
coachella = Event.new("Coachella", 100, 33.33, venue2)
sxsw = Event.new("South x Southwest", 200, 10, venue3)

t1 = Ticket.new(lucy, woodstock)
t2 = Ticket.new(jorge, woodstock)
t3 = Ticket.new(ash, woodstock)
t4 = Ticket.new(david, woodstock)

t5 = Ticket.new(david, coachella)
t6 = Ticket.new(ash, coachella)
t7 = Ticket.new(jorge, coachella)

t8 = Ticket.new(ash, sxsw)
t9 = Ticket.new(david, sxsw)
t10 = Ticket.new(jorge, sxsw)


#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
