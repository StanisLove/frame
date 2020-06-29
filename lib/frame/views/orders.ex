defmodule Frame.Views.Orders do
  require EEx

  EEx.function_from_file(
    :def,
    :index,
    "lib/frame/templates/posts/index.html.eex",
    [:assigns]
  )

  EEx.function_from_file(
    :def,
    :new,
    "lib/frame/templates/posts/new.html.eex"
  )
end
