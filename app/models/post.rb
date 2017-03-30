class Post < ActiveRecord::Base
  belongs_to :user
  after_create :email_sponsor, :email_self

  private

  def email_sponsor
    NightlyMailer.sponsor_nightly(self).deliver
  end

  def email_self 
    NightlyMailer.self_nightly(self).deliver
  end

end
