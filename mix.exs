defmodule HC.Mixfile do
  use Mix.Project

  def project do
    [app: :helix_committee,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 2.0"},
      {:csv, "~> 1.4.0"},
      { :phoenix, github: "phoenixframework/phoenix" },
      { :cowboy, "~> 1.0.0" },
      { :exrm, "~> 0.14.2" }
    ]
  end
end
