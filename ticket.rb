class Ticket

  def initialize(venue)
    @venue = venue
  end

  def price=(amount)
    @price = amount * (1 - @discount)
    p "The ticket for #{@venue} has been discounted #{@discount * 100}% to #{@price}"
  end

  def discount=(discount)
    @discount = discount
    p @discount
  end

  def date=(date)
    @date = date
    validate = date.split("-")
    p validate
    if validate[0].length == 4 && validate[1].length == 2 && validate[2].length == 2 && validate[1].to_i <= 12
      p date
    else
      p "Please submit the date in the format 'yyyy-mm-dd'"
    end
  end
end

ticket = Ticket.new("Town Hall")
ticket.discount=0.20
ticket.price=120
ticket.date="1999-01-10"