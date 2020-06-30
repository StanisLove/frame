defmodule Frame.Router do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger, style: [primary: "#c0392b", accent: "#41B577"]
  end

  plug Plug.Static, from: :frame, at: "/"
  plug Plug.Logger
  plug :match
  plug Plug.Parsers, parsers: [:urlencoded, :multipart]
  plug Plug.Session, store: :cookie, key: "_frame_app", signing_salt: "frame salt"
  plug :put_secret_key_base
  plug :fetch_session
  plug :dispatch

  get "/orders", to: Frame.Actions.Orders.Index
  get "/order", to: Frame.Actions.Orders.New
  post "/orders", to: Frame.Actions.Orders.Create

  get "/" do
    send_resp(conn, 200, "We have a router!")
  end

  get "/login", to: Frame.Actions.Sessions.New
  post "/sessions", to: Frame.Actions.Sessions.Create

  def put_secret_key_base(conn, _) do
    put_in(
      conn.secret_key_base,
      "+e4QIT/Gx53GKXHarcPscKem0JOsnjSNoadLvOesCbXnFad6XcSwlCzvI76yU+ivkCEWFgduZFrjHhh8QUn7mw=="
    )
  end
end
