require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  def setup
    @a_user = User.new(name: "Alice", password: "123", password_confirmation: "123")
    @b_user = User.new(name: "Ben", password: "123", password_confirmation: "123")
    @a_order = Order.new(status: 0, user: @a_user)
    @b_order = Order.new(status: 0, user: @b_user)
  end

  test "valid order" do
    assert @a_order.valid?
  end

  # test "invalid order possible?" do
  # end

end
