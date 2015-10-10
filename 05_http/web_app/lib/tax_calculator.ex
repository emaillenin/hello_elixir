defmodule TaxCalculator do
    def calculate(cost) do
        tax = 20
        (cost + cost*(tax/100))
    end
end