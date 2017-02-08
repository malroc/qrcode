defmodule QRCode do

  use Application
  use Supervisor

  @doc """
    Start hook
  """
  def start(_type, _args) do
    start_link([])
  end

  @doc """
    Supervisor start
  """
  def start_link(_) do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
    ]

    supervise(children, strategy: :one_for_one)
  end

end