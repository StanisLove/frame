defmodule Frame.Actions.Orders.Index do
  import Plug.Conn
  require EEx

  EEx.function_from_file :def, :index, "lib/frame/templates/posts/index.html.eex", [:period]

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, index("For today"))
  end
end
