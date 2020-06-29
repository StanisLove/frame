defmodule Frame.Actions.Orders.Create do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    %{"order" => order, "author" => author} = conn.params

    Frame.Repo.insert(order, %{body: order, author: author})

    url = "/orders"

    conn
    |> put_resp_header("location", url)
    |> put_resp_content_type("text/html")
    |> send_resp(302, "You are being redirected to #{url}")
  end
end

