module BackendPages
  class BotTrackersController < ApplicationController
    before_action :authenticate_admin!

    def index
      @bot_trackers = BotTracker.all
    end
  end
end