class River

  attr_accessor :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    return @fish.count
  end

  def add_fish(new_fish)
    @fish.push(new_fish)
  end

end
