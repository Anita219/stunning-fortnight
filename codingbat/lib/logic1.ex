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

  def squirrel_play(temp, is_summer) do
    upper_limit= upper_limit(is_summer)
    under_limit=60
    cond do
      (temp <= upper_limit) && (temp >= under_limit) ->true
      true-> false
    end
  end

  def upper_limit(is_summer) do
    cond do
      is_summer -> 100
      true -> 90
    end
  end


  def caught_speeding(speed, is_birthday) do
    [limit_no_ticket,under_small,upper_small] = limit_per_ticket(is_birthday)
    cond do
      speed<=limit_no_ticket -> 0
      speed >= under_small && speed <= upper_small ->1
      true ->2

    end
  end
  def limit_per_ticket(is_birthday) do
    cond do
      is_birthday -> [65,66,85]
      true -> [60,61,80]
    end
  end



end
