require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Protegeauto
  class Application < Rails::Application
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'

    config.generators do |g|
        g.assets false
        g.helper false
        g.test_framework nil
    end

    config.active_record.raise_in_transactional_callbacks = true

  end
end
