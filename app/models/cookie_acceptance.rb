# == Schema Information
#
# Table name: cookies_acceptances
#
#  id           :bigint           not null, primary key
#  accept_token :string
#  accepted     :boolean
#  ip_address   :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class CookieAcceptance < ApplicationRecord
  before_validation :build_cookie

  private

  def build_cookie
    loop do
      self.accept_token = SecureRandom.hex(5)
      break unless self.class.exists?(accept_token: accept_token)
    end
    self.accepted = true
    self.name = 'roadze.io cookies_acceptances acceptance'
  end
end
