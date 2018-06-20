# Elm on Phoenix Starter App

This starter app uses:
  * (Optional) [asdf](https://github.com/asdf-vm/asdf) for version management
  * (Optional) [Visual Studio Code](https://code.visualstudio.com) for code editing
  * (Optional) [ElixirLS for VS Code](https://github.com/JakeBecker/vscode-elixir-ls) for Elixir support in VS Code


Steps used to create this starter app:

  * `mix phx.new #{app_name}`
  * `cd #{app_name}`
  * `asdf local erlang #{erlang_version}`
  * `asdf local elixir #{elixir_version}`
  * `asdf local nodejs #{nodejs_version}`
  * `mix deps.get`
  * `mix ecto.create`
  * `cd assets && npm install`
  * Configure task for Visual Studio Code to run the Phoenix server
  * Ignore ElixirLS build artifacts directory `.elixir_ls`
  * Get production configuration from environment rather than `config/prod.secret.exs`
