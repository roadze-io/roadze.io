module BackendPages
  class CookiesAcceptancesController < ApplicationController

    def index
      @pagy, @cookie_acceptances = pagy(CookieAcceptance.all.order('cookie_acceptances.created_at DESC'))
    end

  end
end