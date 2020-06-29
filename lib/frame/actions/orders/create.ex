defmodule Frame.Actions.Orders.Create do
  use Frame.Action

  def call(conn, _opts) do
    %{"order" => order, "author" => author} = conn.params

    Frame.Repo.insert(order, %{body: order, author: author})

    redirect(conn, to: "/orders")
  end
end

