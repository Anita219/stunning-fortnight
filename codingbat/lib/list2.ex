defmodule List2 do
  def count_evens(nb) do
    Enum.count(nb, fn x -> rem(x, 2) == 0 end)
  end

  def big_diff(nb) do
    min = Enum.min(nb)
    max = Enum.max(nb)
    diff = max - min
    diff
  end

  def centered_average(nb) do
    len = length(nb)
    nb = Enum.sort(nb)
    nb = Enum.slice(nb, 1..(len - 2))
    sum = Enum.reduce(nb, 0, fn x, acc -> acc + x end)
    result = trunc(sum / (len - 2))
    result
  end

  def sum13(nb) do
    cond do
      there_is_no_13(nb) -> sum(nb)
      true -> sum(cut_it_out(nb))
    end
  end

  def cut_it_out(nb) do
    part2_draft = Enum.drop_while(nb, fn x -> x != 13 end)
    len = length(part2_draft)
    nb = nb -- part2_draft
    part2 = Enum.slice(part2_draft, 2..len)
    nb = nb ++ part2
    nb
  end

  def there_is_no_13(nb) do
    Enum.count(nb, fn x -> x == 13 end) == 0
  end

  ##################### Functions for sum67
  def sum67(nb) do
    nb = clean_nb(how_many_6(nb), nb)
    sum = sum(nb)
    sum
  end

  def clean_nb(how_many_6, nb) do
    cond do
      how_many_6 == 0 -> nb
      true -> clean_nb(how_many_6 - 1, del_pattern(nb))
    end
  end

  def how_many_6(nb) do
    Enum.count(nb, fn x -> x == 6 end)
  end

  def del_pattern(nb) do
    muss_raus = Enum.drop_while(nb, fn x -> x != 6 end)
    muss_aber_bleiben = Enum.drop_while(muss_raus, fn x -> x != 7 end)
    ## ein 7 fehlt
    falsches_pattern = muss_raus -- muss_aber_bleiben
    gutes_pattern = falsches_pattern ++ [7]
    result = nb -- gutes_pattern
    result
  end

  def sum(list) do
    case list do
      [] -> 0
      _ -> Enum.reduce(list, 0, fn x, acc -> acc + x end)
    end
  end

  ##################### End of Functions for sum67
  def has22(nb) do
    cond do
      nb == [] -> false
      tl(nb) == [] -> false
      true -> has22(nb, false)
    end
  end

  def has22([h | t], past_is_two) do
    cond do
      t == [] && (h != 2 || not past_is_two) -> false
      t == [] && h == 2 -> true
      h == 2 && past_is_two -> true
      h == 2 && not past_is_two -> has22(t, true)
      true -> has22(t, false)
    end
  end
end
