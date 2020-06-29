defmodule Frame.Actions.Orders.Create do
  use Frame.Action
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    %{"order" => order, "author" => author} = conn.params

    Frame.Repo.insert(order, %{body: order, author: author})

    redirect(conn, to: "/orders")
  end
end

