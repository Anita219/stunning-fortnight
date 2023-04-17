defmodule Warmup2 do
  def string_times(word, n), do: String.duplicate(word, n)

  def front_times(word, n) do
    front = String.slice(word, 0..2)
    string_times(front, n)
  end

  def string_bits(word) do
    word = String.graphemes(word)
    word = [0 | word]
    # drop_every skip the first number... so fixed by adding a number
    odd_letters = Enum.drop_every(word, 2)
    odd_letters = to_string(odd_letters)
    odd_letters
  end

  # def string_splosion do
  #
  # end

  # def last2 do

  # end

  def array_count9([h | t]) do
    cond do
      h == 9 -> 1 + array_count9(t)
      true -> array_count9(t)
    end
  end

  def array_count9([]), do: 0

  def array_front9(nums) do
    first_4_nums = Enum.slice(nums, 0..3)

    cond do
      array_count9(first_4_nums) == 1 -> true
      true -> false
    end
  end

  # # looking for the pattern [1,2,3] in a list; this doesn't work, obwohl die Ausnahme "Nums ist leer" mit Overloading behandelt ist...
  # def array123(nums) do
  #    next_is_n?(nums,1)
  # end

  # def next_is_n?(nums, n) do

  #    case [hd(nums), n] do
  #      [[3],3] -> true #last item of a list (without a tail)
  #      [[_],_] -> false
  #      [1, 1] -> next_is_n?(tl(nums), 2)
  #      [2, 2] -> next_is_n?(tl(nums), 3)
  #      [3, 3] -> true
  #      [_,_] -> array123(tl(nums))
  #    end
  # end

  # def array123([]), do: false
  # def next_is_n?([], _), do: false

  # def string_match(a,b) do

  # end
end
