defmodule ErlangRedHelpers.MixProject do
  use Mix.Project

  def project do
    [
      app: :erlang_red_helpers,
      version: "0.1.6",
      elixir: "~> 1.18",
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
      {:earmark, "1.4.48"},
      {:nimble_csv, "1.2.0"},
      {:circuits_i2c, "2.1.0"}
    ]
  end
end
