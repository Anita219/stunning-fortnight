defmodule Logic2 do
  def make_bricks(small, big, goal) do
    cond do
      small + big * 5 < goal -> false
      rem(goal, 5) > small -> false
      true -> true
    end
  end

  def lone_sum(a, b, c) do
    nb = [a, b, c]
    shorter = Enum.uniq(nb)
    rest = nb -- shorter
    list = shorter -- rest
    sum(list)
  end

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

  def lucky_sum(a, b, c) do
    nb = [a, b, c]

    cond do
      List2.there_is_no_13(nb) -> sum(nb)
      a == 13 -> lucky_sum(0, 0, c)
      c == 13 -> lucky_sum(a, b, 0)
      b == 13 -> lucky_sum(a, 0, 0)
    end
  end

  def no_teen_sum(a, b, c) do
    a = fix_teen(a)
    b = fix_teen(b)
    c = fix_teen(c)
    a + b + c
  end

  def fix_teen(n) do
    cond do
      n < 13 || n > 19 || n == 15 || n == 16 -> n
      true -> 0
    end
  end

  def round_sum(a, b, c) do
    a = round10(a)
    b = round10(b)
    c = round10(c)
    a + b + c
  end

  def round10(n) do
    rest = rem(n, 10)

    cond do
      rest == 0 -> n
      rest >= 5 -> n + 10 - rest
      true -> n - rest
    end
  end

  def close_far(a, b, c) do
    cond do
      close(a, b) && far(c, a, b) -> true
      close(a, c) && far(b, a, c) -> true
      close(b, c) && far(a, b, c) -> true
      true -> false
    end
  end

  def close(a, b) do
    abs(a - b) <= 1
  end

  def far(a, b, c) do
    cond do
      abs(a - b) >= 2 && abs(a - c) >= 2 -> true
      true -> false
    end
  end

  def make_chocolate(small, big, goal) do
    cond do
      big * 5 + small < goal -> -1
      true -> find_small(small, big, goal)
    end
  end

  def find_small(_, big, goal) do
    how_many_big_needed = trunc(goal / 5)
    remaining = how_many_big_needed - big

    cond do
      remaining >= 0 -> remaining * 5 + rem(goal, 5)
      true -> rem(goal, 5)
    end
  end
end
