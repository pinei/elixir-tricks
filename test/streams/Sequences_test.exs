defmodule SequencesTest do
  use ExUnit.Case
  doctest Sequences

  test "fibonacci(2)" do
    assert Sequences.fibonacci(2) == [1, 1]
  end
end
