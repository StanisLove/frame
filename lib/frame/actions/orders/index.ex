defmodule Frame.Actions.Orders.Index do
  import Plug.Conn
  alias Frame.Views.Orders

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, Orders.index(period: "for today"))
  end
end
