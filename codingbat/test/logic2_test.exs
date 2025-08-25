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

  test "lucky_sum" do
    assert Logic2.lucky_sum(1, 2, 3) == 6
    assert Logic2.lucky_sum(1, 2, 13) == 3
    assert Logic2.lucky_sum(1, 13, 3) == 1
  end

  test "no_teen_sum" do
    assert Logic2.no_teen_sum(1, 2, 3) == 6
    assert Logic2.no_teen_sum(2, 13, 1) == 3
    assert Logic2.no_teen_sum(2, 1, 14) == 3
  end

  test "round_sum" do
    assert Logic2.round_sum(16, 17, 18) == 60
    assert Logic2.round_sum(12, 13, 14) == 30
    assert Logic2.round_sum(6, 4, 4) == 10
  end

  test "close_far" do
    assert Logic2.close_far(1, 2, 10) == true
    assert Logic2.close_far(1, 2, 3) == false
    assert Logic2.close_far(4, 1, 3) == true
  end

  test "make_chocolate" do
    assert Logic2.make_chocolate(4, 1, 9) == 4
    assert Logic2.make_chocolate(4, 1, 10) == -1
    assert Logic2.make_chocolate(4, 1, 7) == 2
  end
end
