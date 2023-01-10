defmodule WarmupOne do
  def sleep_in(weekday, vacation) do
    cond do
      vacation == true -> true
      weekday == false -> true
      true -> false
    end
  end

  def monkey_trouble(a_smile, b_smile) do
    cond do
      a_smile and b_smile -> true
      a_smile == false and b_smile == false -> true
      true -> false
    end
  end

  def sum_double(a, b) do
    cond do
      a == b -> 2 * (a + b)
      true -> a + b
    end
  end

  def diff21(n) do
    diff = 21 - n

    cond do
      diff < 0 -> -2 * diff
      true -> diff
    end
  end

  def parrot_trouble(talking, hour) do
    cond do
      talking == false -> false
      hour < 7 || hour > 20 -> true
      true -> false
    end
  end

  def makes10(a, b) do
    cond do
      a + b == 10 -> true
      a == 10 || b == 10 -> true
      true -> false
    end
  end

  def near_hundred(n) do
    cond do
      abs(200 - n) <= 10 -> true
      abs(100 - n) <= 10 -> true
      true -> false
    end
  end

  def pos_neg(a, b, negative) do
    cond do
      negative == true && a < 0 && b < 0 -> true
      negative == false && a < 0 && b > 0 -> true
      negative == false && a > 0 && b < 0 -> true
      true -> false
    end
  end

  def not_string(word) do
    cond do
      String.starts_with?(word, "not") -> word
      true -> "not " <> word
    end
  end

  def missing_char(word, index) do
    {one, two} = String.split_at(word, index)
    one <> String.slice(two, 1..String.length(two))
  end

  def front_back(word) do
    if String.length(word) <= 1 do
      word
    else
      start = String.first(word)
      finish = String.last(word)
      finish <> String.slice(word, 1, String.length(word) - 2) <> start
    end
  end

  def front3(word) do
    String.duplicate(String.slice(word, 0..2), 3)
  end
end
