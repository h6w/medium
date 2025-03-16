defmodule MovieApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :movie_api,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :mongodb_driver, :poolboy],
      mod: {MovieApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mongodb_driver, "~> 1.5.2"},
      {:poolboy, "~> 1.5.2"},
      {:plug_cowboy, "~> 2.7.3"},
      {:jason, "~> 1.4.4"}
    ]
  end
end
