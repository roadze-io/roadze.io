# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :validate_cookie_presnece, :set_time_zone

  private

  def validate_cookie_presnece
    return unless cookies.present?

    @cookie = CookieAcceptance.find_by(accept_token: cookies[:roadze_cookie_acceptance]).present?
  end

  def set_time_zone
    if admin_signed_in?
      Time.zone = current_admin.time_zone
    else

    end
  end
end
