# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :validate_cookie_presnece

  private

  def validate_cookie_presnece
    return unless cookies.present?

    @cookie = CookieAcceptance.find_by(accept_token: cookies[:roadze_cookie_acceptance]).present?
  end
end
