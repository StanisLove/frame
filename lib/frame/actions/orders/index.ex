defmodule Frame.Actions.Orders.Index do
  use Frame.Action
  alias Frame.Views.Orders

  def call(conn, _opts) do
    orders = Frame.Repo.all()

    user_email = get_session(conn, :current_user_email)

    conn
    |> render(Orders.index(period: "for today", orders: orders, user_email: user_email))
  end
end
