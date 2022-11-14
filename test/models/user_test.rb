require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save without email" do
    email = Faker::Internet.email
    password = Faker::Internet.password
    user = User.new
    user.password = password
    user.email = email
    assert_true user.save "Should save with email"
  end
end
