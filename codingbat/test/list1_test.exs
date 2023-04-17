defmodule List1_Test do
  use ExUnit.Case
  doctest List1

  test "first_last6" do
    assert List1.first_last6([1, 2, 6]) == true
    assert List1.first_last6([6, 1, 2, 3]) == true
    assert List1.first_last6([13, 6, 1, 2, 3]) == false
  end

  test "same_first_last" do
    assert List1.same_first_last([1, 2, 6]) == false
    assert List1.same_first_last([12, 1, 2, 12]) == true
    assert List1.same_first_last([3, 6, 1, 2, 3]) == true
  end

  test "make_pi" do
    assert List1.make_pi() == [3, 1, 4]
  end

  test "common_end" do
    assert List1.common_end([1, 2, 3], [7, 3]) == true
    assert List1.common_end([1, 2, 3], [7, 3, 2]) == false
    assert List1.common_end([1, 2, 3], [1, 3]) == true
  end

  test "sum3" do
    assert List1.sum3([1, 2, 3]) == 6
    assert List1.sum3([5, 11, 2]) == 18
    assert List1.sum3([7, 0, 0]) == 7
  end

  test "rotate_left3" do
    assert List1.rotate_left3([1, 2, 3]) == [2, 3, 1]
    assert List1.rotate_left3([5, 11, 9]) == [11, 9, 5]
    assert List1.rotate_left3([7, 0, 0]) == [0, 0, 7]
  end

  test "reverse3" do
    assert List1.reverse3([1, 2, 3]) == [3, 2, 1]
  end

  test "max_end3" do
    assert List1.max_end3([1, 2, 3]) == [3, 3, 3]
    assert List1.max_end3([11, 5, 9]) == [11, 11, 11]
    assert List1.max_end3([2, 11, 3]) == [3, 3, 3]
  end

  test "sum2" do
    assert List1.sum2([1, 2, 3]) == 3
    assert List1.sum2([1, 1]) == 2
    assert List1.sum2([1, 1, 1, 1]) == 2
    assert List1.sum2([]) == 0
    assert List1.sum2([4]) == 4
  end

  test "middle_way" do
    assert List1.middle_way([5, 2, 9], [1, 4, 5]) == [2, 4]
  end

  test "make_ends" do
    assert List1.make_ends([1, 2, 3]) == [1, 3]
    assert List1.make_ends([1, 2, 3, 4]) == [1, 4]
    assert List1.make_ends([1]) == [1, 1]
  end

  test "has23" do
    assert List1.has23([2, 5]) == true
    assert List1.has23([4, 3]) == true
    assert List1.has23([4, 5]) == false
  end
end
