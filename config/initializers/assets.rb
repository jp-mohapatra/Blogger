# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( cosmo.css jquery-ui.css datatables.css quill.css quill.snow.css bootsnip_blog.css  )
Rails.application.config.assets.precompile += %w( cosmo.js jquery-1.12.4.js jquery-ui.js datatables.js quill.js quill.min.js quill.global.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
