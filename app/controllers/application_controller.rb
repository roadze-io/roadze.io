# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :validate_cookie_presence, :handle_cross_domain_flash, :set_time_zone

  private

  def validate_cookie_presence
    return unless cookies.present?

    @cookie = CookieAcceptance.find_by(accept_token: cookies[:roadze_cookie_acceptance]).present?
  end

  def set_time_zone
    if admin_signed_in?
      Time.zone = current_admin.time_zone
    else

    end
  end

  def handle_cross_domain_flash
    return unless params[:notice] || params[:success] || params[:error] || params[:alert]

    redirect_to request.path, notice: params[:notice], success: params[:success], error: params[:error], alert: params[:alert]
  end

end
