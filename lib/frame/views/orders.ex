defmodule Frame.Views.Orders do
  use Frame.View

  deftemplate("orders/index.html.eex", :index)
  deftemplate("orders/new.html.eex", :new, false)
end
