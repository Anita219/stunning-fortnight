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
end
