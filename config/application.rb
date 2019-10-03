require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CalvinRemixed
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Add fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    #Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )
  end  
end
