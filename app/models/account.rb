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
class Account < ApplicationRecord

  has_one :owner, class_name: 'User'
  accepts_nested_attributes_for :owner

  has_many :users

  before_validation :downcase_company_name, :configure_account

  validates_presence_of :company_name, :roadze_account_type, :trial_ends

  private

  def downcase_company_name
    self.company_name = company_name.try(:downcase)
  end

  def configure_account
    self.is_active = true
    self.is_verified = false
    self.trial_ends = 14.days.from_now
    self.trial_end_warning = 12.days.from_now
    self.add_to_public_directory = true
  end

end
