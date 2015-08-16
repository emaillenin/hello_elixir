defmodule TestPry do
    require IEx
    def method_pry do
        a = 123
        b = 456
        c = a + b
        IO.puts "Before going into a binding pry"
        IEx.pry
        IO.puts "Just came back from binding pry"
        IO.puts "c is #{c}"
    end
end