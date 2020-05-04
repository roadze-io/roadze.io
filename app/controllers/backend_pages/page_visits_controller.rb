module BackendPages
  class PageVisitsController < ApplicationController
    def index
      @pagy, @page_visits = pagy(PageVisit.all)
    end
  end
end