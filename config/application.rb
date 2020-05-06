# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module RoadzeBaseApplication
  # Rails Base Application
  class Application < Rails::Application
    config.load_defaults 6.0

    if Rails.env.development?
      config.action_mailer.delivery_method = :letter_opener
      config.action_mailer.perform_deliveries = true
      config.action_mailer.default_url_options = { host: 'lvh.me', port: 3000 }
      config.action_mailer.raise_delivery_errors = true
    elsif Rails.env.production?
      config.action_mailer.delivery_method = :postmark
      config.action_mailer.postmark_settings = { api_token: Rails.application.credentials[Rails.env.to_sym][:postmark][:token] }
      config.action_mailer.default_url_options = { host: 'roadze.io' }
      config.action_mailer.raise_delivery_errors = false
    end

  end
end
