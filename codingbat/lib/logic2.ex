defmodule Logic2 do
  def make_bricks(small, big, goal) do
    cond do
      small + big * 5 < goal -> false
      rem(goal, 5) > small -> false
      true -> true
    end
  end

  def lone_sum(a,b,c) do


  end

  # https://codingbat.com/prob/p118406
end
