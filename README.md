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

  * `mix phx.new #{app_name}`
  * `cd #{app_name}`
  * `asdf local erlang #{erlang_version}`
  * `asdf local elixir #{elixir_version}`
  * `asdf local nodejs #{nodejs_version}`
  * `mix deps.get`
  * `mix ecto.create`
  * `cd assets && npm install`
  * Configure task for Visual Studio Code to run Tests and the Phoenix web server
  * Ignore ElixirLS build artifacts directory `.elixir_ls`
  * Get production configuration from environment rather than `config/prod.secret.exs`
  * Still in `assets` directory...
  * `npm install --save-dev elm-webpack-loader`
  * Modify `webpack.config.js` rules to include the loader for Elm files
  * `mkdir elm`
  * `cd elm`
  * `../node_modules/.bin/elm init` to create `elm.json` and `src` directory
  * `../node_modules/.bin/elm install elm/url` to add elm/url as a direct dependency
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
  * Remove phoenix.css import from `assets/css/app.css` 
  * Remove `assets/css/phoenix.css`
  * `cd ../` to go to `assets` directory
  * `npm install --save bootstrap jquery popper.js @fortawesome/fontawesome-free`
  * `npm install --save-dev file-loader`
  * Modify `webpack.config.js` rules to include the loader for FontAwesome font files
  * Modify `assets/js/app.js` to import Bootstap and FontAwesome
  * Modify `assets/css/app.css` to include margin for navbar
  * Modify `assets/elm/src/Main.elm` for starter template with Bootstrap and Font Awesome
