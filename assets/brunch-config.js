exports.config = {
    // See http://brunch.io/#documentation for docs.
    files: {
        javascripts: {
            joinTo: {
                "js/app.js": /^(?!(vendor|elm))/,
                "js/main.js": "vendor/js/main.js",
                "js/vendor.js": /^vendor\/js\/(?!main\.js)/
            },
            order: {
                before: [
                    "vendor/js/jquery.slim.min.js",
                    "vendor/js/popper.min.js",
                    "vendor/js/bootstrap.min.js"
                ]
            }
        },
        stylesheets: {
            joinTo: "css/app.css"
        },
        templates: {
            joinTo: "js/app.js"
        }
    },

    conventions: {
        // This option sets where we should place non-css and non-js assets in.
        // By default, we set this to "/assets/static". Files in this directory
        // will be copied to `paths.public`, which is "priv/static" by default.
        assets: /^(static)/
    },

    // Phoenix paths configuration
    paths: {
        // Dependencies and current project directories to watch
        watched: ["static", "css", "elm", "js", "vendor"],
        // Where to compile files to
        public: "../priv/static"
    },

    // Configure your plugins
    plugins: {
        babel: {
            // Do not use ES6 compiler in vendor code
            ignore: [/vendor/]
        },
        elmBrunch: {
            elmFolder: "elm",
            mainModules: ["src/Main.elm"],
            executablePath: "../node_modules/elm/bin",
            outputFolder: "../vendor/js",
            optimize: true
        }
    },

    modules: {
        autoRequire: {
            "js/app.js": ["js/app"]
        }
    },

    npm: {
        enabled: true
    }
};