defmodule Main.Matrix do
  def create(rows, cols) do
    matrix = Matrex.new(rows, cols, fn () -> 0 end)
    matrix
  end

  def arrayToMatrix(arr) do
    matrix = Matrex.new([Enum.map(arr, fn(x) -> x - x end), arr])
    matrix
  end

  def rand(rows, cols) do
    matrix = Matrex.new(rows, cols, fn () -> (:rand.uniform() |> Float.round(4))*2-1 end)
    matrix
  end

  def add(m1, m2) do
    matrix3 = Matrex.new(m1[:rows], m1[:cols], fn (i, j) -> m1[i][j] + m2[i][j] end)
    matrix3
  end
  def mult(m1, m2) do
    matrix3 = Matrex.new(m1[:rows], m1[:cols], fn (i, j) -> m1[i][j] * m2[i][j] end)
    matrix3
  end
end
