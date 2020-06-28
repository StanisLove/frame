defmodule Frame.Router do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger, style: [primary: "#c0392b", accent: "#41B577"]
  end

  plug Plug.Static, from: :frame, at: "/"
  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/orders", to: Frame.Actions.Orders.Index
  get "/" do
    send_resp(conn, 200, "We have a router!")
  end

end
