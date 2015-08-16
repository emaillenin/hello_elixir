defmodule Apply do
  def dynamic(method_name, params) do
    apply(method_name, params)
    # Apply.method1("test")
    # apply(method_name, params)
  end

  def method1(params) do
    IO.puts "Method 1, called by " <> params
  end

  def method2(params) do
    IO.puts "Method 2, called by " <> params
  end
end