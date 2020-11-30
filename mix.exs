defmodule SmsUp.MixProject do
  use Mix.Project

  def project do
    [
      app: :sms_up,
      elixir: "~> 1.11",
      version: "0.0.1",
      source_url: "https://github.com/RoyalMist/sms_up",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {SmsUp.Application, []}
    ]
  end

  defp deps do
    [
      {:amnesia, "~> 0.2.8"},
      {:httpoison, "~> 1.7.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Lib to use SmsUP api to send sms. It also provides a pin validation system to verify phone numbers or provide second factor system."
  end

  defp package() do
    [
      name: "sms_up",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/RoyalMist/sms_up"}
    ]
  end
end