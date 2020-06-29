defmodule Frame.View do
  defmacro __using__(_) do
    quote do
      import Frame.View
    end
  end

  @root_path "lib/frame/templates"

  defmacro deftemplate(template_name, function_name, with_args \\ true) do
    template_path = Path.join(@root_path, template_name)
    args = if with_args, do: [:assigns], else: []

    quote do
      require EEx

      EEx.function_from_file(
        :def,
        unquote(function_name),
        unquote(template_path),
        unquote(args)
      )
    end
  end
end
