# Elm on Phoenix Starter App

This starter app uses:
  * (Optional) [asdf](https://github.com/asdf-vm/asdf) for version management
  * (Optional) [Visual Studio Code](https://code.visualstudio.com) for code editing
  * (Optional) [ElixirLS for VS Code](https://github.com/JakeBecker/vscode-elixir-ls) for Elixir support in VS Code
  * [elm-brunch](https://github.com/madsflensted/elm-brunch) Brunch plugin to compile Elm code
  * [Bootstrap](https://getbootstrap.com) for styling and components
  * [Font Awesome](https://fontawesome.com) for icons

TODO:
  * Add [elm-test](https://github.com/elm-community/elm-test) to unit test Elm code


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
  * Still in `assets` directory...
  * `npm install --save-dev elm elm-brunch`
  * `mkdir -p elm/src`
  * Update `brunch-config.js` watched paths to include `elm` and add the elm-brunch plugin config
  * `cd elm`
  * `../node_modules/elm/binwrappers/elm-package install --yes`
  * Ignore Elm build artifacts directory `elm-stuff`, but keep the `elm-stuff/exact-dependencies.json` file
  * Change the source directory from `.` to `src` in the `source-directories` in `assets/elm/elm-package.json`
  * Create `assets/elm/src/Main.elm`
  * Create and add `assets/static/images/.gitkeep`
  * Remove `assets/static/images/phoenix.png`
  * Modify UI files to embed Elm application:
    * `assets/js/app.js`
    * `lib/#{app_name_web}/templates/layout/app.html.eex`
    * `lib/#{app_name_web}/templates/page/index.html.eex`
  * Modify page controller test so that it can pass `test/#{app_name_web}/controllers/page_controller_test.exs`
  * Add default mix test task to `.vscode/tasks.json`
  * Remove `assets/css/phoenix.css`
  * In `assets` directory, `mkdir -p vendor/css vendor/js`
  * Download Bootstrap and put compiled and minified css and js files into `assets/vendor/css` and `assets/vendor/js` directories, respectively
  * Download compressed, production jQuery and put into `assets/vendor/js` directory
  * Download unpkg, minified Popper.js and put into `assets/vendor/js` directory
  * Download Font Awesome
    * Put `web-fonts-with-css/css/fontawesome-all.min.css` into `assets/vendor/css` directory
    * Put `web-fonts-with-css/webfonts` directory and contents into `assets/static` directory
  * Modify `brunch-config.js` to bundle vendor and app Javascript files separately
  * Modify `lib/#{app_name_web}/templates/layout/app.html.eex` for Bootstrap and include vendor Javascript bundle
  * Add `webfonts` directory in `lib/#{app_name_web}/endpoint.ex` to the static plug
  * Modify `assets/css/app.css` to include margin for navbar
  * Modify `assets/elm/src/Main.elm` for starter template with Bootstrap and Font Awesome