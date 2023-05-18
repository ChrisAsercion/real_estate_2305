class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_rooms(room)
    @rooms << room
  end
  
  def above_market_average?
    if @price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category
    rooms.select do |room|
      house.category == category
    end
  end
end