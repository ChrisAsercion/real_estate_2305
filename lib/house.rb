class House
  attr_reader :price, :address, :room, :rooms
  def initialize(price, address)
    @price = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end
  
  def above_market_average?
    if @price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    room.area
    stand_in = 1
    rooms.area.each do |room|
      stand_in * room
    end
  end

  # def details
  #   details_hash = {
  #     price: []
  #     address: []}
  # end
end