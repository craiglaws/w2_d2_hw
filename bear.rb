class Bear
    attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_food_count
    return @stomach.count
  end


  def bear_get_fish(river)
    found_fish = river.fish.sample
    @stomach.push(found_fish)
    river.fish.delete(found_fish)
  end


  def roar()
    return "ROOOOAAAARRR!!!"
  end

end
