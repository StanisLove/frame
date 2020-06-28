defmodule Frame.Actions.Orders.Index do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, "Orders list")
  end
end
