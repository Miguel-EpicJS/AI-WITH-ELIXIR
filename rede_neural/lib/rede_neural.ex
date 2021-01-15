defmodule Main.RedeNeural do
  def create(input_nodes, hiden_nodes, output_nodes) do
    i_nodes = input_nodes
    h_nodes = hiden_nodes
    o_nodes = output_nodes

    bias_ih = Main.Matrix.rand(h_nodes, 1)
    bias_ho = Main.Matrix.rand(o_nodes, 1)

    weights_ih = Main.Matrix.rand(h_nodes, i_nodes)
    weights_ho = Main.Matrix.rand(o_nodes, h_nodes)

    [bias_ih, bias_ho, weights_ih, weights_ho]
  end
end
