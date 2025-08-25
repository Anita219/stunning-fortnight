defmodule String1 do
  def hello_name(name) do
    'Hello #{name}'
  end

  def make_abba(a, b) do
    a ++ b ++ b ++ a
  end

  def make_tags(tag, word) do
    '\<#{tag}\>#{word}\</#{tag}\>'
  end

  def make_out_word(out, word) do
    start = String.slice(out, 0..1)
    ending = String.slice(out, 2..3)
    start <> word <> ending
  end

  def extra_end(word) do
    word = to_string(word)
    last_letter = String.at(word, -1)
    before_last_letter = String.at(word, -2)
    last_two_letters = before_last_letter <> last_letter
    result = String.duplicate(last_two_letters, 3)
    to_charlist(result)
  end

  def first_two(word) do
    word = to_string(word)
    len = String.length(word)

    cond do
      len < 2 -> to_charlist(word)
      true -> to_charlist(String.slice(word, 0, 2))
    end
  end

  def first_half(word) do
    word = to_string(word)
    half_len = trunc(String.length(word) / 2)
    to_charlist(String.slice(word, 0, half_len))
  end

  def without_end(word) do
    len = String.length(word)
    String.slice(word, 1, len - 2)
  end

  def combo_string(a, b) do
    len_a = String.length(a)
    len_b = String.length(b)

    cond do
      len_a > len_b -> b <> a <> b
      true -> a <> b <> a
    end
  end

  def non_start(a, b) do
    a = a |> String.to_charlist() |> tl() |> to_string()
    b = b |> String.to_charlist() |> tl() |> to_string()
    a <> b
  end

  def left2(word) do
    len = String.length(word)
    first_part = String.slice(word, 0..1)
    rest = String.slice(word, 2..len)
    rest <> first_part
  end
end
