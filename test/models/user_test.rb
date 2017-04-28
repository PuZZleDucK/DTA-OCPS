require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @a_user = User.new(name: "Ben", password: "123", password_confirmation: "123")
    @invalid_user = User.new(name: " ", password: "123", password_confirmation: "123")
    @nopassword_user = User.new(name: "nopassword", password: "", password_confirmation: "")
  end

  test "valid user" do
    assert @a_user.valid?
  end

  test "invalid blank user" do
    assert_not @invalid_user.valid?
  end

  test "invalid duplicate user" do
    @a_user.save
    @duplicate_user = User.new(name: "Ben", password: "123", password_confirmation: "123")
    assert_not @duplicate_user.valid?
  end

end
