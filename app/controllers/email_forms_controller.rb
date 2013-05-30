class EmailFormsController < ApplicationController
  def new
  	@email_form = EmailForm.new
  end

  def create
    @email_form = EmailForm.new(params[:email_form])
    if @email_form.save
      # Handle a successful save.
      # 관리자에게 메일을 보냄
      UserMailer.new_user_notification(@email_form).deliver
    else
      render 'new'
    end
  end
end
