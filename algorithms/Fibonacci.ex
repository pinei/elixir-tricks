# Fibonacci list
# https://gist.github.com/kyanny/2026028
#
# $ iex
# iex> c "algorithms/Fibonacci.ex"
# iex> Fibonacci.find(7)
# [1, 1, 2, 3, 5, 8, 13]
# 
defmodule Fibonacci do
  # Find the Fibonacci elements recursively (nth >= 2)
  def find(nth) do
    list = [1, 1]
    fib(list, nth)
  end

  # Reverse the list
  defp fib(list, 2) do
    Enum.reverse(list)
  end

  # Add the nth element to head
  defp fib(list, n) do
    fib([hd(list) + hd(tl(list))] ++ list, n - 1)
  end
end