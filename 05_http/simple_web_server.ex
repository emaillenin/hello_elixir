defmodule Foo do
  use Cauldron

  # respond to a GET / request with "Hello, World!"
  def handle("GET", %URI{path: "/"}, req) do
    req |> Request.reply(200, "Hello, World!")
  end
end

# open the cauldron on port 8080
Cauldron.start Foo, port: 8080