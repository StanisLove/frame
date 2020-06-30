defmodule Frame.Actions.Orders.New do
  use Frame.Action
  alias Frame.Views.Orders

  def call(conn, _opts) do
    render(conn, Orders.new)
  end
end
