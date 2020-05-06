# frozen_string_literal: true

# # Backend namespace
module BackendPages
  # Admin dashboard controller
  class AdminController < ApplicationController
    before_action :authenticate_admin!
    def dashboard
      # Calculate Today's Page Visits
      @visits_today = PageVisit.where("created_at >= ?", Time.zone.now.beginning_of_day).count
      @visits_yesterday = PageVisit.where("created_at >= ?", Time.zone.now.yesterday).count
      @delta = @visits_today - @visits_yesterday

      # Calculate Today's Bot Hits
      @bots_today = BotTracker.where("created_at >= ?", Time.zone.now)
    end
  end
end

