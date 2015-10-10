defmodule WebApp do
  use Cauldron
    require IEx

  def handle("GET", %URI{path: "/"}, req) do
    [_, cost] = String.split(req.uri.query, "=")
    cost = String.to_integer(cost)
    tax = 20
    req |> Request.reply(200, "Total Amount is #{(cost + cost*(tax/100))}\n")
  end
end

Cauldron.start WebApp, port: 8080