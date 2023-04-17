defmodule Warmup2Test do
  use ExUnit.Case
  doctest Warmup2

  test "string times" do
    assert Warmup2.string_times("Hi", 2) == "HiHi"
    assert Warmup2.string_times("Hi", 3) == "HiHiHi"
  end

  test "front_time" do
    assert Warmup2.front_times("Chocolate", 2) == "ChoCho"
    assert Warmup2.front_times("Chocolate", 3) == "ChoChoCho"
  end

  test "strings_bits" do
    assert Warmup2.string_bits("Hello") == "Hlo"
    assert Warmup2.string_bits("Hi") == "H"
    assert Warmup2.string_bits("Heeololeo") == "Hello"
  end

  # test "string_splosion"  do
  #
  # end

  # test "last2" do
  #
  # end

  test "array_count9" do
    assert Warmup2.array_count9([1, 2, 9]) == 1
    assert Warmup2.array_count9([1, 9, 9]) == 2
    assert Warmup2.array_count9([1, 9, 9, 3, 9]) == 3
  end

  test "array_front9" do
    assert Warmup2.array_front9([1, 2, 9, 3, 4]) == true
    assert Warmup2.array_front9([1, 2, 3, 4, 9]) == false
    assert Warmup2.array_front9([1, 2, 3, 4, 5]) == false
  end

  test "array123" do
    assert Warmup2.array123([1, 1, 2, 3, 1]) == true
    assert Warmup2.array123([1, 1, 2, 4, 1]) == false
    assert Warmup2.array123([1, 1, 2, 1, 2, 3]) == true
  end

  # test "string_match" do

  # end
end
