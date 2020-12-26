defmodule Sequences do
  @moduledoc """
  Documentation for `Sequences`.
  """

  @doc """
  Fibonacci elements using unfold

  iex> Sequences.fibonacci(7)
  [1, 1, 2, 3, 5, 8, 13]
  """
  def fibonacci(n) do
   # Stream.unfold({1,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(n)

   fib = fn {f1,f2} -> {f1, {f2, f1+f2}} end
   Stream.unfold({1,1}, fib) |> Enum.take(n)
  end

  @doc """
  Odd numbers

  iex> Sequences.odds(8)
  [1, 3, 5, 7]
  """
  def odds(until) do
    odd? = &(rem(&1, 2) != 0)
    Enum.filter(1..until, odd?)
  end

end
