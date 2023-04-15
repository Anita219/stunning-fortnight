defmodule Logic1 do
  def cigar_party(cigars, is_weekend) do
    cond do
      is_weekend && cigars >= 40 -> true
      not is_weekend && (cigars >= 40 && cigars <= 60) -> true
      true -> false
    end
  end

  def date_fashion(you, date) do
    cond do
      you <= 2 || date <= 2 -> 0
      you >= 8 || date >= 8 -> 2
      true -> 1
    end
  end
end
