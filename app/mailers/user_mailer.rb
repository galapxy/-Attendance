class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  #def account_activation
   # @greeting = "こんにちは、"

    #mail to: "to@example.org"
  #end
  # ↑自動生成内容

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "有効なアカウントです。"
  end
  
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "パスワードリセット"
  end
end
