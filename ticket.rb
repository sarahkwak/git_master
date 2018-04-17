module Pricing
  def show_price
    puts "Hello"
  end
end

class Ticket
  require 'date'
  include Pricing

  def initialize(name)
    @name = name
  end

  def price=(new_price)
    @price = new_price
  end

  def price
    @price
  end

  def show_price
    puts "10 dollra"
  end

  def date=(date)
    return warning_message unless date

    day, month, year = date.split("/").map(&:to_i)
    return warning_message unless day && month && year

    year = format_year(year)
    if Date.valid_date? year, month, day
      date = date
      puts date
    else
      warning_message
    end
  end

  def call_name
    puts name
  end

  private

  attr_reader :name

  def format_year(year)
    return unless year

    if year > 18 && year < 100
      year += 1900
    else
      year += 2000
    end
  end

  def warning_message
    puts "Please submit the date in the format ‘mm/dd/yy’"
  end
end

def Ticket.most_expensive(*tks)
  tks.max_by(&:price)
end

class Coupon < Ticket
end

t = Ticket.new("Town Hall")
t.date = "pizza"
t.date = '03/03/99'
t.date = '02/07/07'
t.call_name
p Ticket.ancestors

t.price= 33
tt = Ticket.new("Kenya West")
tt.price = 333
ttt = Ticket.new("TuneYard")
ttt.price = 99

Ticket.most_expensive(t, tt, ttt)

c = Coupon.new("Bed and Bath")
# p c.price = 10
# cc = Coupon.new("Max")
# p cc.price = 100
# p c.most_expensive(c, cc)
p c.is_a? Coupon
p c.is_a? Ticket
p c.is_a? Object
p c.is_a? Kernel
