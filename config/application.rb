# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module BotFarm
  class Application < Rails::Application
    config.load_defaults 5.1

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec
      g.fixture_replacement :factory_girl
      g.system_tests = nil
    end
  end
end
