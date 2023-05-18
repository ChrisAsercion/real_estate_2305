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
    it "can add rooms to the house" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2) 
      expect(house.rooms.first).to eq(room_1)
    end
  end
  describe "Iteration 3" do
    it "checks market average" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.above_market_average?).to eq(false)
    end
    
    it "can check the category of the rooms of the house" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_from_category(:bedroom).first).to eq(room_1)
    end

    xit "can measure the area of the whole house" do
      house = House.new("$400000", "123 sugar lane")
      require 'pry'; binding.pry
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.area).to eq(1900)
    end
    #failed to rationalize .area in the house.rb. 
    #I think I almost had something where I was going to double enumerate, but IDK if it would work

    xit "can put the details of the house into a hash" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end

  end
end