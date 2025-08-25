defmodule String2 do
  def double_char(word) do
    str_word = to_string(word)
    letters = String.graphemes(str_word)
    letters = duplicate_letter(letters)
    List.to_charlist(letters)
  end

  def duplicate_letter([]), do: []

  def duplicate_letter([h | t]) do
    [h] ++ [h] ++ duplicate_letter(t)
  end

  # def count_hi(word) do
  #  str_word = to_string(word)
  # cond do
  #  not(String.contains?(str_word,"hi"))->0
  # true ->
  #   end
  # end
end
