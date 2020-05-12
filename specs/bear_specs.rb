require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBear < MiniTest::Test
  def setup()

    @bear1 = Bear.new("Ernie", "Kodiak")
    @bear2 = Bear.new("Hector","Polar")

    @river1 = River.new("Yukon")

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Mackrel")
    @fish4 = Fish.new("Salmon")
    @fish5 = Fish.new("Trout")

  end

  def test_bear_has_name
    assert_equal("Ernie", @bear1.name)
  end

  def test_beas_has_type
    assert_equal("Polar", @bear2.type)
  end

  def test_bear_has_empty_stomach
    assert_equal(0, @bear1.bear_food_count)
  end

  def test_bear_gets_fish_from_river
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish3)
    @river1.add_fish(@fish4)
    @bear1.bear_get_fish(@river1)
    @bear1.bear_get_fish(@river1)
    assert_equal(2, @bear1.bear_food_count)
    assert_equal(1, @river1.fish_count)

  end


  def test_can_bear_roar
    assert_equal("ROOOOAAAARRR!!!", @bear1.roar)
  end




end
