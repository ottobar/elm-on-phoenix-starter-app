# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elm_on_phoenix_starter_app,
  ecto_repos: [ElmOnPhoenixStarterApp.Repo]

# Configures the endpoint
config :elm_on_phoenix_starter_app, ElmOnPhoenixStarterAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lNl6tB6zi7/+w/zijtaCs+Kx5pqmQQ6D6cGEsQ0+3NHFo9L/gz1+yJvSTGwkqfua",
  render_errors: [view: ElmOnPhoenixStarterAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmOnPhoenixStarterApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
