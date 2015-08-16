defmodule Bounce do
  def report do
    receive do
      {:message, msg, pid} -> IO.puts("Received a message - #{msg} from #{inspect pid}")
    end
  end
end