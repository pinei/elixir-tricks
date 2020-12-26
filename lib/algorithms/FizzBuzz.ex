# Using Enum, Tuple and Case to solve FizzBuzz
# https://www.youtube.com/watch?v=GGB4qLqfQDs
#
# $ iex
# iex> c "alorithms/FizzBuzz.ex"
# iex> FizzBuzz.print(15)
# 1
# 2
# Fizz
# ...
#
defmodule FizzBuzz do
  def print(nth) do
    Enum.each(1..nth, fn x -> IO.puts(say(x)) end)
  end

  defp say(x) do
    case {rem(x, 3) == 0, rem(x, 5) == 0} do
      {true, true} -> "FizzBuzz"
      {true, false} -> "Fizz"
      {false, true} -> "Buzz"
      {false, false} -> x
    end
  end

end