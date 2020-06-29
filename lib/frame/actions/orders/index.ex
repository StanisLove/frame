defmodule Frame.Actions.Orders.Index do
  use Frame.Action
  alias Frame.Views.Orders

  def call(conn, _opts) do
    orders = Frame.Repo.all()

    render(conn, Orders.index(period: "for today", orders: orders))
  end
end
