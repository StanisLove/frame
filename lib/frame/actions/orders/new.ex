defmodule Frame.Actions.Orders.New do
  import Plug.Conn
  alias Frame.Views.Orders

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, Orders.new)
  end
end

