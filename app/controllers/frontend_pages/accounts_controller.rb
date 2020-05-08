# frozen_string_literal: true

# FrontendPages namespace
module FrontendPages

  # Accounts controller
  class AccountsController < ApplicationController
    before_action :set_account, only: %i[show new edit create update destroy]

    def show; end

    def new
      @account = Account.new
      @account.build_owner
    end

    def edit; end

    def create
      @account = Account.new(account_params)

      respond_to do |format|
        if @account.save!
          @account.update(owner_id: @account.owner.id)
          format.html { redirect_to unauthenticated_user_url, flash: { notice: "#{@account.company_name.titleize} has been created. Please check your email for instructions." }}
        else
          format.html { redirect_to pricing_url(subdomain: '', alert: 'Something happened while creating your account. Please try again.') }
        end
      end
    end

    def update; end

    def destroy; end

    private

    def set_account; end

    def account_params
      params.require(:account).permit(:company_name, :roadze_account_type, owner_attributes: [:email, :password, :password_confirmation, :first_name, :last_name, :username])
    end

  end

end