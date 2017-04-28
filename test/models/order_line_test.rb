require 'test_helper'

class OrderLineTest < ActiveSupport::TestCase

  def setup
    @unit_item = Item.new(name: "unit name", unit_price: 1)
    @a_user = User.new(name: "Alice", password: "123", password_confirmation: "123")
    @a_order = Order.new(status: 0, user: @a_user)
    @a_line = OrderLine.new(quantity: 1, order: @a_order, item: @unit_item)
    @big_line = OrderLine.new(quantity: 999, order: @a_order, item: @unit_item)
    @negative_line = OrderLine.new(quantity: -2, order: @a_order, item: @unit_item)
    @zero_line = OrderLine.new(quantity: 0, order: @a_order, item: @unit_item)
  end

  test "valid line" do
    assert @a_line.valid?
    assert @big_line.valid?
  end

  # TODO:
  # test "invalid line" do
  #   assert_not @negative_line.valid?
  #   assert_not @zero_line.valid?
  # end

end
