defmodule Reducer do
    def initial, do: %{}

    def reduce(aggregator, values) do
        IO.puts "Reducing #{inspect values}"
        Dict.merge(values, aggregator, fn(_k, v1, v2) -> v1 + v2 end)
    end
end