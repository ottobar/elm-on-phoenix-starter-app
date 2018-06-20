# Elm on Phoenix Starter App

This starter app uses:
  * [asdf](https://github.com/asdf-vm/asdf) for version management


Steps used to create this starter app:

  * `mix phx.new #{app_name}`
  * `cd #{app_name}`
  * `asdf local erlang #{erlang_version}`
  * `asdf local elixir #{elixir_version}`
  * `asdf local nodejs #{nodejs_version}`
  * `mix deps.get`
  * `mix ecto.create`
  * `cd assets && npm install`
