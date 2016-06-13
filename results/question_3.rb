require "test/unit"

class Question3
  def add(x, y)
    x + y
  end
end

class Question3Test < Test::Unit::TestCase
  def test_add
    [{x: 1, y: 1, result: 2},
     {x: 100, y: 32, result: 132},
     {x: 500, y: 15, result: 515}].each do |h|
      assert_equal h[:result], Question3.new.add(h[:x], h[:y])
    end
  end
end