defmodule ErlangRedHelpers.MixProject do
  use Mix.Project

  def project do
    [
      app: :erlang_red_helpers,
      version: "0.1.7",
      elixir: "~> 1.20",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mdex, "0.14.6"},
      {:nimble_csv, "1.3.0"},
      {:circuits_i2c, "2.1.1"},
      {:temple, "0.14.1"}
    ]
  end
end
