require_relative 'takeaway.rb'

require 'takeaway'

describe Takeaway do

  let(:menu)        { double('menu', meals: food) }
  let(:takeaway)    { described_class.new(menu_class)}

  describe 'see_menu' do
    it 'prints out the menu' do
      expect(takeaway)
    end
  end

end