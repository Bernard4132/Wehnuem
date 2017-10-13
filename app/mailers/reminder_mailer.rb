class ReminderMailer < ApplicationMailer
	default from: "reminder@wehnuemgatedcommunity.com"
  
  def remind_notification(user, progress)
  	@user = user
  	@progress = progress
  	mail to: user.email , subject: "Progress added to your Project."
  end
end
