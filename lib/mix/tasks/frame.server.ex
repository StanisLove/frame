defmodule Mix.Tasks.Frame.Server do
  use Mix.Task
  require Logger

  def run(args) do
    Logger.info("Starting server...")
    Mix.Tasks.Run.run(args ++ ["--no-halt"])
  end
end
