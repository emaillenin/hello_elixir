# :rpc.call :"server1@INLeninRaj", :code, :load_binary, [TaxCalculator, 'iex', binary]
defmodule TaxCalculator do
    def tax_value(gross_salary) do
        IO.puts(gross_salary * 15)
        :timer.sleep(1000)
        TaxCalculator.tax_value(gross_salary)
    end
end