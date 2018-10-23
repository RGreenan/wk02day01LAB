require('minitest/autorun')
require('minitest/rg')
require_relative('../lab_bus')
require_relative("../lab_person")

class BusTest < MiniTest::Test

  def setup
    # passengers1 = []
    # passengers2 = [@person1, @person2]
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Terry", 50)
    @person2 = Person.new("Rebekah", 22)
  end

  def test_get_route()
    expected = 22
    actual = @bus1.route
    assert_equal(expected, actual)
  end

  def test_get_destination()
    expected = 'Ocean Terminal'
    actual = @bus1.destination
    assert_equal(expected, actual)
  end

  def test_drive_method()
    expected = "Brum brum"
    actual = @bus1.drive
    assert_equal(expected, actual)
  end

  def test_passengers()
    expected = []
    actual = @bus1.passengers
    assert_equal(expected, actual)
  end

  def test_count_of_passengers()
    expected = 0
    actual = @bus1.count_passengers
    assert_equal(expected, actual)
  end

  def test_pick_up
    expected = [@person1]
    @bus1.pick_up(@person1)
    actual = @bus1.passengers
    assert_equal(expected, actual)
  end

  def test_drop_off
    expected = [@person1]
    @bus2.pick_up(@person1)
    @bus2.pick_up(@person2)
    @bus2.drop_off(@person2)
    actual = @bus2.passengers
    assert_equal(expected, actual)
  end

  def test_remove_passengers
    expected = []
    @bus2.pick_up(@person1)
    @bus2.pick_up(@person2)
    actual = @bus2.remove()
    assert_equal(expected, actual)
  end
end
