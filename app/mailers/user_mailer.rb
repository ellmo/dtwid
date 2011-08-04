class UserMailer < ActionMailer::Base
  include Devise::Mailers::Helpers
  default :from => "ellmunzai@gmail.com"
  
  def confirmation_instructions(record)
    devise_mail(record, :confirmation_instructions)
  end

    # send password reset instructions
  def reset_password_instructions(user)
    @resource = user
    mail(:to => @resource.email,
      :subject => "Reset password instructions",
      :tag => 'password-reset',
      :content_type => "text/html") do |format|
        format.html { render "devise/mailer/reset_password_instructions" }
    end
  end

  def unlock_instructions(record)
    devise_mail(record, :unlock_instructions)
  end
end
