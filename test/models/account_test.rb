# == Schema Information
#
# Table name: accounts
#
#  id                      :bigint           not null, primary key
#  add_to_public_directory :boolean          default(FALSE)
#  company_name            :string
#  is_active               :boolean
#  is_verified             :boolean
#  modules                 :json
#  roadze_account_type     :string
#  settings                :json
#  trial_end_warning       :date
#  trial_ends              :date
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  owner_id                :integer
#
# Indexes
#
#  index_accounts_on_company_name  (company_name) UNIQUE
#
require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
