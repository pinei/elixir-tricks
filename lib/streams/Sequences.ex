defmodule Sequences do

  @doc """
  Fibonacci elements recursively (nth >= 2)
  ## Examples

    iex> Sequences.fibonacci() |> Enum.take(7)
    [1, 1, 2, 3, 5, 8, 13]
  """
  def fibonacci() do
    Stream.unfold({1,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end)
  end

end
