# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  around_action :set_time_zone
  before_action :validate_cookie_presnece

  private

  def set_time_zone(&block)
    if admin_signed_in?
      Time.use_zone(current_admin.time_zone, &block)
    else

    end
  end

  def validate_cookie_presnece
    return unless cookies.present?

    @cookie = CookieAcceptance.find_by(accept_token: cookies[:roadze_cookie_acceptance]).present?
  end
end
