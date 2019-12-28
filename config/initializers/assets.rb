# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( slick.min.js )
Rails.application.config.assets.precompile += %w( bootsnav.js )
Rails.application.config.assets.precompile += %w( gmaps.min.js )
Rails.application.config.assets.precompile += %w( plugins.js )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( easy_background.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-1.11.2.min.js )
Rails.application.config.assets.precompile += %w( vendor/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( vendor/modernizr-2.8.3-respond-1.4.2.min.js )
Rails.application.config.assets.precompile += %w[ckeditor/config.js]
Rails.application.config.assets.precompile += %w( devise.css )
Rails.application.config.assets.precompile += %w( jgallery.js )
Rails.application.config.assets.precompile += %w( user_space.css )
Rails.application.config.assets.precompile += %w( simple_user.js )
Rails.application.config.assets.precompile += %w( home.js )
