  require('minitest/autorun')
  require('minitest/rg')
  require_relative('../lab_person')

  class TestPerson < MiniTest::Test

    def setup()
      @person1 = Person.new("Chris", 28)

    end

    def test_get_name
      expected = "Chris"
      actual = @person1.name
      assert_equal(expected, actual)
    end

    def test_get_age
      expected = 28
      actual = @person1.age
      assert_equal(expected, actual)
    end

  end
