class Post < ActiveRecord::Base
  def send_to_twitter!
    Twitter.update("#{self.title} #{self.url}")
  end

  Post.find(9).send_to_twitter!

  Post.find(9).delay.send_to_twitter!

  UserMailer.send_registeration_mail(email, name).deliver
  UserMailer.delay.send_registration_mail(email, name)
end

