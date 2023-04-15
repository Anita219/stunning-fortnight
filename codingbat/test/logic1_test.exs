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
end
