class SiriemaUser < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :institution, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :found_out_how, presence: true
end
