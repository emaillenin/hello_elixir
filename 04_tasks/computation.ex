defmodule Computation do
  def run(x) when x > 0 do
    :timer.sleep(x)  # simulates a long-running operation
    x
  end
end