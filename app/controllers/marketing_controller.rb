class MarketingController < ApplicationController
  require 'browser/aliases'
  Browser::Base.include(Browser::Aliases)

  def home
    @cookie_acceptance = CookieAcceptance.new
    params[:ip_address] = request.remote_ip

    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Home Page', # Change this to @page_title after SEO Meta tags added
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
      matcher: browser.bot.why?
    )
  end

  def features
    @cookie_acceptance = CookieAcceptance.new
    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Home Page', # Change this to @page_title after SEO Meta tags added
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
      matcher: browser.bot.why?
    )
  end

  def pricing
    @cookie_acceptance = CookieAcceptance.new
    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Home Page', # Change this to @page_title after SEO Meta tags added
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
      matcher: browser.bot.why?
    )
  end

  def company
    @cookie_acceptance = CookieAcceptance.new
    PageVisit.create(
      visit_date: DateTime.now,
      ip_address: request.remote_ip,
      mobile_device: browser.device.mobile?,
      browser_used: browser.name,
      page: 'Home Page', # Change this to @page_title after SEO Meta tags added
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
      matcher: browser.bot.why?
    )
  end

end
