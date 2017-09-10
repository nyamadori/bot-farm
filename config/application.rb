require_relative 'boot'

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module BotFarm
  class Application < Rails::Application
    config.load_defaults 5.1
    config.generators.system_tests = nil
    config.active_job.queue_adapter = :sidekiq

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec
      g.fixture_replacement :factory_girl
    end
  end
end
