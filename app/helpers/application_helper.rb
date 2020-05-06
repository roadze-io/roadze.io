# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend
  def current_request?(*requests)
    requests.each do |request|
      next unless request[:controller] == controller.controller_name
      if request[:action].is_a?(Array) && request[:action].include?(controller.action_name)
        return true
      end
      return true if request[:action] == controller.action_name
    end
    false
  end
  # current_request?(controller: 'users', action: ['new', 'create'])

  def flash_class(level)
    case level
      when 'notice' then 'alert-info'
      when 'success' then 'alert-success'
      when 'error' then 'alert-error'
      when 'alert' then 'alert alert-alert'
    end
  end

  def flash_title(heading)
    case heading
    when 'notice' then 'Heads up...'
    when 'success' then 'Great!'
    when 'error' then 'Hmmm....'
    when 'alert' then 'Oops...'
    end
  end

  def flash_icon(img)
    case img
    when 'notice' then content_tag(:i, '', class: 'far fa-info-circle text-white fa-lg')
    when 'success' then content_tag(:i, '', class: 'far fa-check-circle text-white fa-lg')
    when 'error' then content_tag(:i, '', class: 'far fa-exclamation-triangle text-white fa-lg')
    when 'alert' then content_tag(:i, '', class: 'far fa-times-octagon text-white fa-lg')
    end
  end

end
