module BackendPages
  class PageVisitsController < ApplicationController
    def index
      @page_visits = PageVisit.all
    end
  end
end