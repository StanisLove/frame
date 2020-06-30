defmodule Frame.Actions.Sessions.New do
  use Frame.Action
  alias Frame.Views.Sessions

  def call(conn, _opts) do
    render(conn, Sessions.new)
  end
end

