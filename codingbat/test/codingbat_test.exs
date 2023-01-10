defmodule CodingbatTest do
  use ExUnit.Case
  doctest Codingbat

  test "greets the world" do
    assert Codingbat.hello() == :world
  end
end
