class MarketingController < ApplicationController
  require 'browser/aliases'
  Browser::Base.include(Browser::Aliases)

  def home
    @page_title       = 'Home'
    @page_description = 'roadze landing page'
    @page_keywords    = 'Site, Home, Logistics, Load Board, Freight'

    @cookie_acceptance = CookieAcceptance.new
    params[:ip_address] = request.remote_ip

    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Home', # Change this to @page_title after SEO Meta tags added
      controller: 'Marketing',
      device_name: browser.device.name,
      platform: browser.platform,
      internet_explorer: browser.ie?,
      internet_explorer_version: nil, #rename and fix this later
      browser_version: browser.version
    )
    return unless browser.bot?

    BotTracker.create(
      bot_name: browser.bot.name,
      search_engine: browser.bot.search_engine?,
      matcher: browser.bot.why?,
      ip_address: request.remote_ip,
      controller: 'Marketing',
      action: 'Home'
    )
  end

  def features
    @page_title       = 'development road map'
    @page_description = 'roadze product road map'
    @page_keywords    = 'Site, Features, Logistics, Load Board, Freight'

    @cookie_acceptance = CookieAcceptance.new
    params[:ip_address] = request.remote_ip

    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Features', # Change this to @page_title after SEO Meta tags added
      controller: 'Marketing',
      device_name: browser.device.name,
      platform: browser.platform,
      internet_explorer: browser.ie?,
      internet_explorer_version: nil, #rename and fix this later
      browser_version: browser.version
    )
    return unless browser.bot?

    BotTracker.create(
      bot_name: browser.bot.name,
      search_engine: browser.bot.search_engine?,
      matcher: browser.bot.why?,
      ip_address: request.remote_ip,
      controller: 'Marketing',
      action: 'Features'
    )
  end

  def pricing
    @page_title       = 'Pricing'
    @page_description = 'roadze pricing page'
    @page_keywords    = 'Site, Pricing, Logistics, Load Board, Freight'

    @cookie_acceptance = CookieAcceptance.new
    params[:ip_address] = request.remote_ip

    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Pricing', # Change this to @page_title after SEO Meta tags added
      controller: 'Marketing',
      device_name: browser.device.name,
      platform: browser.platform,
      internet_explorer: browser.ie?,
      internet_explorer_version: nil, #rename and fix this later
      browser_version: browser.version
    )
    return unless browser.bot?

    BotTracker.create(
      bot_name: browser.bot.name,
      search_engine: browser.bot.search_engine?,
      matcher: browser.bot.why?,
      ip_address: request.remote_ip,
      controller: 'Marketing',
      action: 'Pricing'
    )
  end

  def company
    @page_title       = 'About'
    @page_description = 'roadze about page'
    @page_keywords    = 'Site, About, Logistics, Load Board, Freight'
    
    @cookie_acceptance = CookieAcceptance.new
    params[:ip_address] = request.remote_ip

    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Company', # Change this to @page_title after SEO Meta tags added
      controller: 'Marketing',
      device_name: browser.device.name,
      platform: browser.platform,
      internet_explorer: browser.ie?,
      internet_explorer_version: nil, #rename and fix this later
      browser_version: browser.version
    )
    return unless browser.bot?

    BotTracker.create(
      bot_name: browser.bot.name,
      search_engine: browser.bot.search_engine?,
      matcher: browser.bot.why?,
      ip_address: request.remote_ip,
      controller: 'Marketing',
      action: 'Company'
    )
  end

end
