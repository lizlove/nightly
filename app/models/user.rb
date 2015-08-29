class User < ActiveRecord::Base
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def sponsor_add_notification
    NightlyMailer.sponsor_add(self).deliver
  end 

end
