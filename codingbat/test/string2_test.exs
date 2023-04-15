defmodule String2test do
  use ExUnit.Case
  doctest Logic2

  test "double_char" do
    assert String2.double_char('The') == 'TThhee'
    assert String2.double_char('AAbb') == 'AAAAbbbb'
    assert String2.double_char('Hi-There') == 'HHii--TThheerree'
  end

  #test "count hi" do
  #  assert String2.count_hi('abc hi ho')==1
  #  assert String2.count_hi('ABChi hi')==2
  #  assert String2.count_hi('hihi')==2
  #end



end
