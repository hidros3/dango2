# encoding: utf-8

class UserMailer < ActionMailer::Base
  default from: "taekjoo@gmail.com"

  def new_user_notification(user)
  	@user = user
  	mail(to: "general.apps@yahoo.com", subject: "FA의 새로운 가입자가 들어왔습니다.")
  end
end
