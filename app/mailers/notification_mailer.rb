class NotificationMailer < ApplicationMailer

  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "JonahEmailTest@gmail.com" ,
      subject: "A comment has been added to your place")
  end


end