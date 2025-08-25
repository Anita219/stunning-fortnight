defmodule Logic1_Test do
  use ExUnit.Case
  doctest Logic1

  test "cigar_party" do
    assert Logic1.cigar_party(30, false) == false
    assert Logic1.cigar_party(50, false) == true
    assert Logic1.cigar_party(70, true) == true
  end

  test "date fashion" do
    assert Logic1.date_fashion(5, 10) == 2
    assert Logic1.date_fashion(5, 2) == 0
    assert Logic1.date_fashion(5, 5) == 1
  end

  test "squirrel_play" do
    assert Logic1.squirrel_play(70, false) == true
    assert Logic1.squirrel_play(95, false) == false
    assert Logic1.squirrel_play(95, true) == true
  end

  test "caught_speeding" do
    assert Logic1.caught_speeding(60, false) == 0
    assert Logic1.caught_speeding(65, false) == 1
    assert Logic1.caught_speeding(65, True) == 0
  end

  test "sorta_sum" do
    assert Logic1.sorta_sum(3, 4) == 7
    assert Logic1.sorta_sum(9, 4) == 20
    assert Logic1.sorta_sum(10, 11) == 21
  end

  test "alarm_clock" do
    assert Logic1.alarm_clock(1, false) == '7:00'
    assert Logic1.alarm_clock(5, false) == '7:00'
    assert Logic1.alarm_clock(0, false) == '10:00'
  end

  test "love6" do
    assert Logic1.love6(6, 4) == true
    assert Logic1.love6(4, 5) == false
    assert Logic1.love6(1, 5) == true
    assert Logic1.love6(-1, -5) == true
    assert Logic1.love6(40, 50) == false
  end

  test "in1to10" do
    assert Logic1.in1to10(5, false) == true
    assert Logic1.in1to10(11, false) == false
    assert Logic1.in1to10(11, true) == true
  end

  test "near_ten" do
    assert Logic1.near_ten(12) == true
    assert Logic1.near_ten(17) == false
    assert Logic1.near_ten(19) == true
  end
end
