defmodule Math do
	def sum(a,b) do
		a+b
	end

    def zero?(0) do
        true
    end

    def zero?(x) when is_number(x) do
        false
    end
end
