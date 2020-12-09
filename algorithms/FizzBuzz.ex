# Using Enum, Tuple and Case to solve FizzBuzz
# https://www.youtube.com/watch?v=GGB4qLqfQDs
#
# $ iex
# iex> c "alorithms/FizzBuzz.ex"
# iex> FizzBuzz.execute(15)
#
defmodule FizzBuzz do
  def execute(numbers) do
    Enum.each(1..numbers,
      fn x -> 
        case {rem(x, 3) == 0, rem(x, 5) == 0} do
          {true, true} -> IO.puts "FizzBuzz"
          {true, false} -> IO.puts "Fizz"
          {false, true} -> IO.puts "Buzz"
          {false, false} -> IO.puts x
        end
      end
    )
  end
end