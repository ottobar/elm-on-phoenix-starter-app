# Elm on Phoenix Starter App

This starter app uses:
  * (Optional) [asdf](https://github.com/asdf-vm/asdf) for version management
  * (Optional) [Visual Studio Code](https://code.visualstudio.com) for code editing
  * (Optional) [ElixirLS for VS Code](https://github.com/JakeBecker/vscode-elixir-ls) for Elixir support in VS Code
  * [Bootstrap](https://getbootstrap.com) for styling and components
  * [Font Awesome](https://fontawesome.com) for icons
  * [PostgreSQL](https://www.postgresql.org) for database (using `postgres` user)
    
    By default, PostgreSQL sets up a superuser with username and password of "postgres". If you don’t have it configured this way, you can do so by running:

        createdb postgres
        psql postgres
        CREATE USER postgres;
        ALTER USER postgres PASSWORD 'postgres';
        ALTER USER postgres WITH SUPERUSER;


TODO:
  * Add [elm-test](https://github.com/elm-explorations/test) to unit test Elm code


Steps used to create this starter app:

  * TBD
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
  * `mkdir elm`
  * Modify `brunch-config.js` watched paths to include `elm` and add elm-brunch plugin config
  * Also modify `brunch-config.js` to bundle vendor, main, and app Javascript files separately
  * `cd elm`
  * `../node_modules/elm/bin/elm init` to create `elm.json` and `src` directory
  * `../node_modules/elm/bin/elm install elm/url` to add elm/url as a direct dependency
  * Ignore Elm build artifacts directory `elm-stuff`
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
  * Download slim, compressed, production jQuery and put into `assets/vendor/js` directory
  * Download unpkg, minified Popper.js and put into `assets/vendor/js` directory
  * Download Font Awesome
    * Put `web-fonts-with-css/css/fontawesome-all.min.css` into `assets/vendor/css` directory
    * Put `web-fonts-with-css/webfonts` directory and contents into `assets/static` directory
  * Modify `lib/#{app_name_web}/templates/layout/app.html.eex` for Bootstrap and include vendor and main Javascript bundles
  * Add `webfonts` directory in `lib/#{app_name_web}/endpoint.ex` to the static plug
  * Modify `assets/css/app.css` to include margin for navbar
  * Modify `assets/elm/src/Main.elm` for starter template with Bootstrap and Font Awesome
