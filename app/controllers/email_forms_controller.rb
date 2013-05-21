class EmailFormsController < ApplicationController
  def new
  	@email_form = EmailForm.new
  end

  def create
    @email_form = EmailForm.new(params[:email_form])
    if @email_form.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
