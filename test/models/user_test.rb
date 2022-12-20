require "test_helper"

class UserTest < ActiveSupport::TestCase
  def should_not_save_without_email
    user = User.new
    user.email = Faker::Internet.email
    assert_not user.save, "Should not save without password."
  end
end
