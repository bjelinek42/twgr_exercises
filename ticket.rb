class Ticket
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(amount)
    @price = amount * (1 - @discount)
    p "The ticket for #{@venue} has been discounted #{@discount * 100}% to #{@price}"
  end

  def discount=(discount)
    @discount = discount
    p @discount
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end

  # def date=(date)
  #   @date = date
  #   validate = date.split("-")
  #   p validate
  #   if validate[0].length == 4 && validate[1].length == 2 && validate[2].length == 2 && validate[1].to_i <= 12
  #     p date
  #   else
  #     p "Please submit the date in the format 'yyyy-mm-dd'"
  #   end
  # end
end



th = Ticket.new("Town Hall", "1/1/1")
cc = Ticket.new("Convention Center", "2/2/2")
fg = Ticket.new("Fairgrounds", "3/3/3")
th.discount = 0
cc.discount = 0
fg.discount = 0.3
th.price = 100
cc.price = 70
fg.price = 103
highest = Ticket.most_expensive(th, cc, fg)
p highest
