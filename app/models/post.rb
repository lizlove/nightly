class Post < ActiveRecord::Base
  belongs_to :user
  after_create :email_sponsor

  private

  def email_sponsor
    NightlyMailer.sponsor_nightly(self).deliver
    @post = self
  end

end
