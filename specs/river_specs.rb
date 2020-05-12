require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRiver < MiniTest::Test
  def setup()

    @river1 = River.new("Yukon")

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Mackrel")
    @fish4 = Fish.new("Salmon")
    @fish5 = Fish.new("Trout")

  end



  def test_river_has_name
    assert_equal("Yukon", @river1.name)
  end

  def test_river_is_empty
    assert_equal(0, @river1.fish_count)
  end

  def test_add_fish_to_river
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    assert_equal(3, @river1.fish_count)
  end



end
