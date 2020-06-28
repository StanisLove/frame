defmodule Frame.Router do
  use Plug.Router

  plug Plug.Static, from: :frame, at: "/"
  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "We have a router!")
  end

end
