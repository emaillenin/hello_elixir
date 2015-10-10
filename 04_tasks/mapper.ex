defmodule Mapper do
    def map(values) do
        IO.puts "Mapping #{Enum.join(values, ", ")}"
        for {key, val} <- (values |> Enum.flat_map(&String.split(&1)) |> Enum.group_by(&String.length/1)), into: %{}, do: {key, Enum.count(val)}
    end
end