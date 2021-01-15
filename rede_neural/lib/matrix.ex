defmodule Main.Matrix do
  def create(rows, cols) do
    matrix = Matrex.new(rows, cols, fn () -> :rand.uniform(10) end)
    matrix
  end
end
