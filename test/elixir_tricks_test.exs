defmodule ElixirTricksTest do
  use ExUnit.Case
  doctest ElixirTricks

  test "greets the world" do
    assert ElixirTricks.hello() == :world
  end
end
