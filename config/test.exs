use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elm_on_phoenix_starter_app, ElmOnPhoenixStarterAppWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elm_on_phoenix_starter_app, ElmOnPhoenixStarterApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "elm_on_phoenix_starter_app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
