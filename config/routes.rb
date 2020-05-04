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
    devise_for :admins, path: '',
                        path_names: { sign_in: 'login', sign_out: 'logout' },
                        controllers: {
                          confirmations: 'admins/confirmations',
                          passwords: 'admins/passwords',
                          sessions: 'admins/sessions',
                          unlocks: 'admins/unlocks'
                        }
    namespace :backend_pages, path: '' do
      resources :bot_trackers, only: [:index]
      resources :page_visits, only: [:index]
    end
    devise_scope :admin do
      authenticated :admin do
        root to: 'backend_pages/admin#dashboard', as: :authenticated_admin
      end
      unauthenticated do
        root to: 'admins/sessions#new', as: :unauthenticated_admin
      end
    end
  end
end
