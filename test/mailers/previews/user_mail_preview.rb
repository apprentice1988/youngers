# Preview all emails at http://localhost:3000/rails/mailers/user_mail
class UserMailPreview < ActionMailer::Preview
  def welcome
    UserMail.welcome
  end
end
