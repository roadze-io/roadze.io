# == Schema Information
#
# Table name: cookie_acceptances
#
#  id           :bigint           not null, primary key
#  accept_token :string
#  accepted     :boolean
#  ip_address   :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class CookieAcceptanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
