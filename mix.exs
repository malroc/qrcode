defmodule QRCode.Mixfile do
  use Mix.Project
  def project do
    [app: :qrcode,
     version: "1.0.4",
     language: :erlang,
     deps: deps]
  end
  def application do
    [applications: [], mod: {:qrcode, []}]
  end
  defp deps do
    [
    ]
  end
end
