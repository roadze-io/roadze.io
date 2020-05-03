# frozen_string_literal: true

# roadze.io
class Marketing
  def self.matches?(request)
    request.subdomain.blank? || request.subdomain == 'www'
  end
end

# app.roadze.io
class Subscription
  def self.matches?(request)
    request.subdomain.present? && request.subdomain == 'app'
  end
end

# support.roadze.com
class Support
  def self.matches?(request)
    request.subdomain.present? && request.subdomain == 'support'
  end
end

# Application Routes
Rails.application.routes.draw do
  constraints(Marketing) do
    root 'marketing#home'
    get 'features', to: 'marketing#features'
    get 'pricing', to: 'marketing#pricing'
    get 'company', to: 'marketing#company'

    resources :cookie_acceptances, only: %i[new create]
  end

  constraints(Subscription) do
  end

  constraints(Support) do
  end
end
