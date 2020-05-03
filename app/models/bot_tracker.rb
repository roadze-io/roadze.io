# == Schema Information
#
# Table name: bot_trackers
#
#  id            :bigint           not null, primary key
#  bot_name      :string
#  ip_address    :string
#  matcher       :string
#  search_engine :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class BotTracker < ApplicationRecord
end
