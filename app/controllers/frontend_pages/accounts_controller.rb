# frozen_string_literal: true

# FrontendPages namespace
module FrontendPages

  # Accounts controller
  class AccountsController < ApplicationController
    before_action :set_account, only: %i[show new edit create update destroy]

    def show; end

    def new; end

    def edit; end

    def create; end

    def update; end

    def destroy; end

    private

    def set_account; end

    def account_params; end
  end

end