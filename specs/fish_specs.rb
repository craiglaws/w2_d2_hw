require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestFish < MiniTest::Test
  def setup()

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Mackrel")
    @fish4 = Fish.new("Salmon")
    @fish5 = Fish.new("Trout")

  end


  def test_fish_has_name
    assert_equal("Salmon", @fish2.name)
  end 



end
