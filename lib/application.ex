defmodule SupervisedStack.Application do
  use Application

  @impl true
  def start(_start_type, _start_args) do
    children = [
      {SupervisedStack, []}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: SupervisedStack.Supervisor)
  end
end
