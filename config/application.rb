require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LbvTraining
  class Application < Rails::Application

    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.i18n.locale = :'pt-BR'

    config.assets.precompile += %w( init_application.css )
    config.assets.precompile += %w( init_application.js )
    config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
    config.assets.precompile += %w[ *.png *.jpeg *.jpg *.gif ]

    config.generators do |g|
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

  end
end
