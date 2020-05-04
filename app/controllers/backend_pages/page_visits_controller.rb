module BackendPages
  class PageVisitsController < ApplicationController
    def index
      @pagy, @page_visits = pagy(PageVisit.all.order('page_visits.created_at DESC'))
    end
  end
end