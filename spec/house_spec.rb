require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "Initialize" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_a House
    end

    it "has a cost" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end

    it "has an address" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.address).to eq("123 sugar lane")
    end

    it "has rooms by default" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end
  end
  describe "adds rooms" do
    # it "can add rooms to the house" do
    #   house.add_room(room_1)
    #   house.add_room(room_2) 
    #   expect(house.rooms).to eq(rooms)
    # end
  end
  describe "Iteration 3" do
    it "checks market average" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.above_market_average?).to eq(false)
    end
    
  end
end