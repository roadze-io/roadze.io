# frozen_string_literal: true

# # Backend namespace
module BackendPages
  # Admin dashboard controller
  class AdminController < ApplicationController
    before_action :authenticate_admin!
    def dashboard
      @visits_today = PageVisit.where("created_at >= ?", Time.zone.now.beginning_of_day).count
      @visits_yesterday = PageVisit.where("created_at >= ?", Time.zone.now.yesterday).count
      @delta = @visits_today - @visits_yesterday
    end
  end
end
