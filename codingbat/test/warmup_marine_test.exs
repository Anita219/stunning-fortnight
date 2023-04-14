defmodule WarmupOneMarineTest do
  use ExUnit.Case
  doctest WarmupOneMarine

  test "sleep in" do
    assert WarmupOneMarine.sleep_in(false, false) == true
    assert WarmupOneMarine.sleep_in(true, false) == false
    assert WarmupOneMarine.sleep_in(false, true) == true
  end

  test "monkey trouble" do
    assert WarmupOneMarine.monkey_trouble(true, true) == true
    assert WarmupOneMarine.monkey_trouble(false, false) == true
    assert WarmupOneMarine.monkey_trouble(true, false) == false
  end

  test "sum double" do
    assert WarmupOneMarine.sum_double(3,3) == 2* (3+3)
    assert WarmupOneMarine.sum_double(1,9) == 9+1
    assert WarmupOneMarine.sum_double(2,6) == 2+6
  end

  test "parrot_trouble" do
    assert WarmupOneMarine.parrot_trouble(true, 6) == true
    assert WarmupOneMarine.parrot_trouble(true, 7) == false
    assert WarmupOneMarine.parrot_trouble(false, 6) == false
    assert WarmupOneMarine.parrot_trouble(true, 23) == true
  end

  test "makes10" do
    assert WarmupOneMarine.makes10(9,10) ==true
    assert WarmupOneMarine.makes10(9,9) == false
    assert WarmupOneMarine.makes10(1,9) ==true
  end

  test "near hundred(n)" do
    assert WarmupOneMarine.near_hundred(93) == true
    assert WarmupOneMarine.near_hundred(90) == true
    assert WarmupOneMarine.near_hundred(-111) == false
    assert WarmupOneMarine.near_hundred(201) == true
  end

  test "pos_neg" do
    assert WarmupOneMarine.pos_neg(1,-1,false) == true
    assert WarmupOneMarine.pos_neg(-1,1,false) == true
    assert WarmupOneMarine.pos_neg(-4,-5,true) == true
    assert WarmupOneMarine.pos_neg(-4,0,false) == true
    assert WarmupOneMarine.pos_neg(0,5,false) == false
    assert WarmupOneMarine.pos_neg(4,5,true) == false
  end

 # test "not_string" do
 #   assert WarmupOneMarine.not_string("candy") == "not candy"
 #   assert WarmupOneMarine.not_string("x") == "not x"
 #   assert WarmupOneMarine.not_string("not bad") == "bad"
 # end

end
