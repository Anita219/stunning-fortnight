defmodule WarmupOneMarine do
  # hier deine Methoden einfügen :)
  def sleep_in(weekday, vacation) do
    cond do
      not weekday or vacation -> true
      true -> false
    end
  end

  def monkey_trouble(a_smile, b_smile) do
    cond do
      a_smile and b_smile -> true
      not a_smile and not b_smile -> true
      true -> false
    end
  end

  def sum_double(a, b) do
    cond do
      a == b -> 2 * (a + b)
      true -> a + b
    end
  end

  def parrot_trouble(talking, hour) do
    cond do
      not talking -> false
      hour < 7 or hour > 20 -> true
      true -> false
    end
  end

  def makes10(a, b) do
    cond do
      a + b == 10 -> true
      a == 10 or b == 10 -> true
      true -> false
    end
  end

  def near_hundred(n) do
    distance100 = abs(100 - n)
    distance200 = abs(200 - n)

    cond do
      distance100 <= 10 or distance200 <= 10 -> true
      true -> false
    end
  end

  def pos_neg(a, b, negative) do
    cond do
      !negative && ((a < 0 && b >= 0) || (a >= 0 && b < 0)) -> true
      negative && (a < 0 && b < 0) -> true
      true -> false
    end
  end

  def not_string(word) do
    cond do
      String.starts_with?(word, "not ") -> word
      true -> "not " <> word
    end
  end

  def missing_char(word, index) do
    {one, two} = String.split_at(word, index)
    {_, two} = String.split_at(two, 1)
    one <> two
  end

  def front_back(word) do
    {front, rest} = String.split_at(word, 1)
    {body, back} = String.split_at(rest, -1)
    back <> body <> front
  end

  def front3(word) do
    String.duplicate(String.slice(word, 0..2), 3)
  end
end
