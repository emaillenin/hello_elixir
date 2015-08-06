closures = []
i = 0

while i<3 do
  closures = closures ++ [fn -> IO.puts i end]
  i=i+1
end

Enum.at(closures, 0).()
Enum.at(closures, 1).()
Enum.at(closures, 2).()