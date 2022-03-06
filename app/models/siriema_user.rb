class SiriemaUser < ApplicationRecord
  extend FriendlyId
  friendly_id :code, use: :slugged

  def code
    Digest::SHA1.hexdigest self.name
  end

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :institution, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :found_out_how, presence: true
end
