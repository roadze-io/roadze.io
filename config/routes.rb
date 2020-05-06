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
  namespace :frontend_pages do
    get 'user/dashboard'
  end
  constraints(Marketing) do
    root 'marketing#home'
    get 'features', to: 'marketing#features'
    get 'pricing', to: 'marketing#pricing'
    get 'company', to: 'marketing#company'

    resources :cookie_acceptances, only: %i[new create]
    resources :public_directory, only: %i[index show]
  end

  constraints(Subscription) do
    devise_for :users, path: '',
                       path_names: { sign_in: 'login', sign_out: 'logout' },
                       controllers: {
                           confirmations: 'users/confirmations',
                           passwords: 'users/passwords',
                           sessions: 'users/sessions'
                       }
    namespace :frontend_pages, path: '' do
      resources :accounts
    end

    devise_scope :user do
      authenticated :user do
        root to: 'frontend_pages/user#dashboard', as: :authenticated_user
      end
      unauthenticated do
        root to: 'users/sessions#new', as: :unauthenticated_user
      end
    end
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
      resources :accounts, only: [:index]
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
