Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf .png)
Rails.application.config.assets.precompile += %w(administration.scss)
Rails.application.config.assets.precompile += %w(administration.js)
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
Rails.application.config.assets.precompile += %w( filterrific/filterrific-spinner.gif )