require 'menu'

describe Menu do

  menu = {
      'Big burger' => 5.00,
      'Small burger' => 10.00,
      'Chips' => 2.50,
      'Beans' => 2.00,
  }

  let(:food) {'Big burger'}
  let(:quantity) {3}

  describe "#menu" do
    it 'should create a list with dishes and prices' do
      expect(subject.menu).to eq menu
    end
  end

  describe "#selecting food" do
    it 'should select the correct amount' do
      subject.choice(food, quantity)

      expect(subject.choice).to eq({ food => quantity })
    end
  end
end