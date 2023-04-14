defmodule CodingbatTest do
  use ExUnit.Case
  doctest Codingbat

  test "greets the world" do
    assert :world == Codingbat.hello()
  end

  test "sums up" do
    assert 2 == Codingbat.sum(1, 1)
    #    assert 5 == Codingbat.sum(2,3)
  end
end
