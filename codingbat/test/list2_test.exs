defmodule List2_Test do
  use ExUnit.Case
  doctest List2

  test "count_evens" do
    assert List2.count_evens([2, 1, 2, 3, 4]) == 3
    assert List2.count_evens([2, 2, 0]) == 3
    assert List2.count_evens([1, 3, 5]) == 0
  end

  test "big_diff" do
    assert List2.big_diff([10, 3, 5, 6]) == 7
    assert List2.big_diff([7, 2, 10, 9]) == 8
    assert List2.big_diff([2, 10, 7, 2]) == 8
  end

  test "centered_average" do
    assert List2.centered_average([1, 2, 3, 4, 100]) == 3
    assert List2.centered_average([1, 1, 5, 5, 10, 8, 7]) == 5
    assert List2.centered_average([-10, -4, -2, -4, -2, 0]) == -3
  end

  test "sum13(nb)" do
    assert List2.sum13([1, 2, 2, 1]) == 6
    assert List2.sum13([1, 1]) == 2
    assert List2.sum13([1, 2, 2, 1, 13]) == 6
  end

  test "sum67" do
    assert List2.sum67([1, 2, 2]) == 5
    assert List2.sum67([6, 1, 2, 2, 7]) == 0
    assert List2.sum67([1, 2, 2, 6, 99, 99, 7]) == 5
    assert List2.sum67([1, 1, 6, 7, 2]) == 4
    assert List2.sum67([1, 1, 6, 7, 2, 6, 8, 8, 9, 7, 6, 8, 7]) == 4
  end

  test "has22" do
    assert List2.has22([1, 2, 2]) == true
    assert List2.has22([1, 2, 1, 2]) == false
    assert List2.has22([2, 1, 2]) == false
  end
end
