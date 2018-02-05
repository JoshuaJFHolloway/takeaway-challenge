require_relative 'menu'
require_relative 'order'

class Takeaway

  attr_reader :order

  def initialize(menu = Menu, order = Menu)
    @menu = menu.new
    @order = order.new
    print_header
    interactive_menu
  end

  def print_header

    puts "Welcome to Josh's Burgers".center(40)
    puts "-------------".center(40)

  end

  def interactive_menu
    loop do
      print_interface
      process(gets.chomp)
    end
  end

  def print_interface

    puts " "
    puts "Please browse over the apps contents and type in the number of"
    puts "the page you want to look at"
    puts "
         1. See menu
         2. Show Basket
         3. Checkout
         4. Exit"

  end

  def process(selection)

    case selection
      when "1"
        @menu.menu
      when "2"
        show_basket #(would show total food chosen)
      when "3"
        show_checkout #(confirms order and sends text)
      when "4"
        print_footer
        exit #(and clear basket)
      else
        puts "I'm sorry but I don't know what you meant!"
    end
  end

  def print_footer
    puts "-------------".center(40)
    puts "Thanks for buying Burgers!"
    puts "I am sure we will see you again soon"
  end

end

#Takeaway.new
