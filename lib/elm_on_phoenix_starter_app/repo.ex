defmodule ElmOnPhoenixStarterApp.Repo do
  use Ecto.Repo,
    otp_app: :elm_on_phoenix_starter_app,
    adapter: Ecto.Adapters.Postgres
end
