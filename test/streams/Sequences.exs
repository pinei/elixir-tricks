defmodule SequencesTest do
  use ExUnit.Case
  doctest ElixirTricks

  test "fibonacci(2)" do
    assert Sequences.fibonacci(2) == [1, 1]
  end
end
