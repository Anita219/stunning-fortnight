defmodule WarmupOneTest do
  use ExUnit.Case
  doctest WarmupOne

  # Codingbat Warmup-1

  # Sleep In
  # The parameter weekday is True if it is a weekday, and the parameter vacation is True if we are on vacation.
  # We sleep in if it is not a weekday or we're on vacation.
  # Return True if we sleep in.
  test "sleep in" do
    assert WarmupOne.sleep_in(false, false) == true
    assert WarmupOne.sleep_in(true, false) == false
    assert WarmupOne.sleep_in(false, true) == true
  end

  # Monkey Trouble
  # We have two monkeys, a and b, and the parameters a_smile and b_smile indicate if each is smiling.
  # We are in trouble if they are both smiling or if neither of them is smiling.
  # Return True if we are in trouble.
  test "monkey trouble" do
    assert WarmupOne.monkey_trouble(true, true) == true
    assert WarmupOne.monkey_trouble(false, false) == true
    assert WarmupOne.monkey_trouble(true, false) == false
  end

  # Sum Double
  # Given two int values, return their sum.
  # Unless the two values are the same, then return double their sum.
  test "sum double" do
    assert WarmupOne.sum_double(1, 2) == 3
    assert WarmupOne.sum_double(3, 2) == 5
    assert WarmupOne.sum_double(2, 2) == 8
  end

  # diff21
  # Given an int n, return the absolute difference between n and 21,
  # except return double the absolute difference if n is over 21.
  test "diff 21" do
    assert WarmupOne.diff21(19) == 2
    assert WarmupOne.diff21(22) == 2
    assert WarmupOne.diff21(21) == 0
  end

  # Parrot Trouble
  # We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23.
  # We are in trouble if the parrot is talking and the hour is before 7 or after 20.
  # Return True if we are in trouble.
  test "parrot trouble" do
    assert WarmupOne.parrot_trouble(true, 6) == true
    assert WarmupOne.parrot_trouble(true, 7) == false
    assert WarmupOne.parrot_trouble(false, 6) == false
  end

  # Makes 10
  # Given 2 ints, a and b, return True if one if them is 10 or if their sum is 10.
  test "makes 10" do
    assert WarmupOne.makes10(9, 10) == true
    assert WarmupOne.makes10(9, 9) == false
    assert WarmupOne.makes10(7, 3) == true
  end

  # Near Hundred
  # Given an int n, return True if it is within 10 of 100 or 200.
  test "near hundred" do
    assert WarmupOne.near_hundred(201) == true
    assert WarmupOne.near_hundred(90) == true
    assert WarmupOne.near_hundred(89) == false
  end

  # Pos Neg
  # Given 2 int values, return True if one is negative and one is positive.
  # Except if the parameter "negative" is True, then return True only if both are negative.
  test "Pos Neg" do
    assert WarmupOne.pos_neg(1, -1, false) == true
    assert WarmupOne.pos_neg(-1, 1, false) == true
    assert WarmupOne.pos_neg(-4, -5, false) == false
    assert WarmupOne.pos_neg(-1, 1, true) == false
    assert WarmupOne.pos_neg(1, -1, true) == false
    assert WarmupOne.pos_neg(-4, -5, true) == true
  end

  # Not String
  # Given a string, return a new string where "not " has been added to the front.
  # However, if the string already begins with "not", return the string unchanged.
  test "Not String" do
    assert WarmupOne.not_string("candy") == "not candy"
    assert WarmupOne.not_string("not bad") == "not bad"
    assert WarmupOne.not_string("notify") == "notify"
  end

  # Missing Char
  # Given a non-empty string and an int n, return a new string where the char at index n has been removed.
  # The value of n will be a valid index of a char in the original string.
  test "Missing Char" do
    assert WarmupOne.missing_char("lalala", 2) == "laala"
    assert WarmupOne.missing_char("abcdef", 0) == "bcdef"
    assert WarmupOne.missing_char("kitten", 4) == "kittn"
  end

  # Front Back
  # Given a string, return a new string where the first and last chars have been exchanged.
  test "Front Back" do
    assert WarmupOne.front_back("code") == "eodc"
    assert WarmupOne.front_back("a") == "a"
    assert WarmupOne.front_back("ab") == "ba"
  end

  # Front 3
  # Given a string, we'll say that the front is the first 3 chars of the string.
  # If the string length is less than 3, the front is whatever is there.
  # Return a new string which is 3 copies of the front.
  test "Front 3" do
    assert WarmupOne.front3("putty") == "putputput"
    assert WarmupOne.front3("Chocolate") == "ChoChoCho"
    assert WarmupOne.front3("la") == "lalala"
  end
end
