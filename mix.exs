defmodule Opus.Graph.MixProject do
  use Mix.Project

  def project do
    [
      app: :opus_graph,
      version: "0.1.0",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      deps: deps(),
      docs: [
        extras: ["README.md"],
        main: "readme",
        source_url: "https://github.com/zorbash/opus_graph"
      ]
    ]
  end

  def application, do: []

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:opus, ">= 0.5.1"},
      {:graphvix, "~> 0.5"},
      {:credo, "~> 0.8.10", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.18", only: :dev},
    ]
  end

  defp description, do: "Graph visualization for Opus pipelines"

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Dimitris Zorbas"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/zorbash/opus_graph"}
    ]
  end
end
