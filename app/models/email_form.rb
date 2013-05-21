class EmailForm < ActiveRecord::Base
  attr_accessible :email
  before_save { |email_form| email_form.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_intensitive: false }

end
