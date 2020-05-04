# frozen_string_literal: true

# # Backend namespace
module BackendPages
  # Admin dashboard controller
  class AdminController < ApplicationController
    before_action :authenticate_admin!
    def dashboard; end
  end
end
