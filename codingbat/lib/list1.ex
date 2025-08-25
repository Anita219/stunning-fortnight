defmodule List1 do
  def first_last6(nums) do
    cond do
      Enum.at(nums, 0) == 6 || Enum.at(nums, -1) == 6 -> true
      true -> false
    end
  end

  def same_first_last(nums) do
    cond do
      nums != [] && Enum.at(nums, 0) == Enum.at(nums, -1) -> true
      true -> false
    end
  end

  def make_pi(), do: [3, 1, 4]

  def common_end(a, b) do
    cond do
      hd(a) == hd(b) || Enum.at(a, -1) == Enum.at(b, -1) -> true
      true -> false
    end
  end

  def sum3([h | t]), do: h + sum3(t)
  def sum3([]), do: 0

  def rotate_left3([h | t]), do: t ++ [h]

  def reverse3(nums), do: Enum.reverse(nums)

  def max_end3(nums) do
    first = hd(nums)
    last = Enum.at(nums, 2)
    max = max(first, last)
    # better way to do that ? [max] * 3 does not work
    [max, max, max]
  end

  def sum2(nums) do
    case nums do
      [] -> 0
      [a] -> a
      _ -> hd(nums) + Enum.at(nums, 1)
    end
  end

  def middle_way(a, b) do
    [Enum.at(a, 1), Enum.at(b, 1)]
  end

  def make_ends(nums) do
    [hd(nums), Enum.at(nums, -1)]
  end

  def has23(nums) do
    cond do
      Enum.member?(nums, 2) || Enum.member?(nums, 3) -> true
      true -> false
    end
  end
end
