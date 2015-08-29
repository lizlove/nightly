require 'test_helper'

class NightlyMailerTest < ActionMailer::TestCase
  test "sponsor_add" do
    mail = NightlyMailer.sponsor_add
    assert_equal "Sponsor add", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "user_register" do
    mail = NightlyMailer.user_register
    assert_equal "User register", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "sponsor_nightly" do
    mail = NightlyMailer.sponsor_nightly
    assert_equal "Sponsor nightly", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
