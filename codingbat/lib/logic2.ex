defmodule Logic2 do
  def make_bricks(small, big, goal) do
    cond do
      small + big * 5 < goal -> false
      rem(goal, 5) > small -> false
      true -> true
    end
  end

  ## trying enum and recursion, not working though
  # because enum.uniq keeps the "first duplicate"
  # def lone_sum(a,b,c) do
  #  list = [a,b,c]
  #  list = Enum.uniq(list)
  #  sum(list)
  # end

  # def sum([]), do: 0
  # def sum([h|t]), do: h + sum(t)

  ##
end
