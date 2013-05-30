# encoding: utf-8

class EmailForm < ActiveRecord::Base
  attr_accessible :email
  before_save { |email_form| email_form.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: { message: "은 공백이 될 수 없습니다."}, format: { with: VALID_EMAIL_REGEX, message: "이 유효하지 않습니다."}, uniqueness: { case_intensitive: false, message: "이 이미 등록 되어있습니다." }
end

