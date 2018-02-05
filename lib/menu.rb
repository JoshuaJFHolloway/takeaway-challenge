class Menu

  attr_reader :meals, :food_hash

  def initialize

  @meals = {
      'Big burger' => 5.00,
      'Small burger' => 10.00,
      'Chips' => 2.50,
      'Beans' => 2.00,
  }
  food_hash = {}

  end

  def menu

    number = 0

    @meals.each do |food, price|
      number += 1
      puts "#{number}. Food: #{food} | Price: £#{price}"

    end
  end

  def choice(food, quantity = 1)

    @food_hash[food] = quantity if @meals[food]

  end

end