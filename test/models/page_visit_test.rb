# == Schema Information
#
# Table name: page_visits
#
#  id                        :bigint           not null, primary key
#  browser_used              :string
#  browser_version           :string
#  controller                :string
#  device_name               :string
#  internet_explorer         :boolean
#  internet_explorer_version :string
#  ip_address                :string
#  lat                       :float
#  lon                       :float
#  mobile_device             :boolean
#  page                      :string
#  platform                  :string
#  visit_date                :date
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
require 'test_helper'

class PageVisitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
