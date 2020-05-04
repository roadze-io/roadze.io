module BackendPages
  class BotTrackersController < ApplicationController
    before_action :authenticate_admin!

    def index
      @pagy, @bot_trackers = pagy(BotTracker.all.order('bot_trackers.created_at DESC'))
    end
  end
end