class User < ActiveRecord::Base
  has_many :posts
  devise :database_authenticatable, :recoverable, :registerable, :rememberable, :validatable
  after_create :sponsor_add_notification

  private

  def user_register_notification
    NightlyMailer.user_register(self).deliver
    @user = user
    @sponsor = @user.sponsor_email
    mail to: @user.email, subject: "You have registered for Nightly"
  end

  def sponsor_add_notification
    NightlyMailer.sponsor_add(self).deliver
  end

end
