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
    upper_limit = upper_limit(is_summer)
    under_limit = 60

    cond do
      temp <= upper_limit && temp >= under_limit -> true
      true -> false
    end
  end

  def upper_limit(is_summer) do
    cond do
      is_summer -> 100
      true -> 90
    end
  end

  def caught_speeding(speed, is_birthday) do
    [limit_no_ticket, under_small, upper_small] = limit_per_ticket(is_birthday)

    cond do
      speed <= limit_no_ticket -> 0
      speed >= under_small && speed <= upper_small -> 1
      true -> 2
    end
  end

  def limit_per_ticket(is_birthday) do
    cond do
      is_birthday -> [65, 66, 85]
      true -> [60, 61, 80]
    end
  end

  def sorta_sum(a, b) do
    sum = a + b

    cond do
      sum < 10 || sum > 19 -> sum
      true -> 20
    end
  end

  def alarm_clock(day, vacation) do
    [weekday, weekend] = settings_alarm_clock(vacation)

    cond do
      day != 0 && day != 6 -> weekday
      true -> weekend
    end
  end

  def settings_alarm_clock(vacation) do
    cond do
      not vacation -> ['7:00', '10:00']
      true -> ['10:00', 'off']
    end
  end

  def love6(a, b) do
    cond do
      a == 6 || b == 6 -> true
      abs(a + b) == 6 || abs(a - b) == 6 -> true
      true -> false
    end
  end

  def in1to10(n, outside_mode) do
    cond do
      not outside_mode && (n >= 1 && n <= 10) -> true
      outside_mode && (n <= 1 || n >= 10) -> true
      true -> false
    end
  end

  def near_ten(nb) do
    nb_reduced = rem(nb, 10)

    cond do
      nb_reduced >= 8 || nb_reduced <= 2 -> true
      true -> false
    end
  end
end
