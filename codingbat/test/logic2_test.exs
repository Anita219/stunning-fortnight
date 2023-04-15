defmodule Logic2_Test do
  use ExUnit.Case
  doctest Logic2

  test "make bricks" do
    assert Logic2.make_bricks(3, 1, 8) == true
    assert Logic2.make_bricks(3, 1, 9) == false
    assert Logic2.make_bricks(3, 2, 10) == true
    assert Logic2.make_bricks(2, 2, 7) == true
    assert Logic2.make_bricks(2, 2, 8) == false
  end

  test "lone sum" do
    assert Logic2.lone_sum(1, 2, 3) == 6
    assert Logic2.lone_sum(3, 2, 3) == 2
    assert Logic2.lone_sum(3, 3, 3) == 0
  end

end
