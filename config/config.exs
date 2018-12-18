# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elm_on_phoenix_starter_app,
  ecto_repos: [ElmOnPhoenixStarterApp.Repo]

# Configures the endpoint
config :elm_on_phoenix_starter_app, ElmOnPhoenixStarterAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0V139mSLvpRyhk/nvZ7ChS2M7Xv7S3ZIVft4XAJvQsSM1mvkf2Y/gBH16otlNjPV",
  render_errors: [view: ElmOnPhoenixStarterAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmOnPhoenixStarterApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
