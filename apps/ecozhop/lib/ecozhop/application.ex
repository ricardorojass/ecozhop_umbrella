defmodule Ecozhop.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Ecozhop.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Ecozhop.PubSub}
      # Start a worker by calling: Ecozhop.Worker.start_link(arg)
      # {Ecozhop.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Ecozhop.Supervisor)
  end
end
