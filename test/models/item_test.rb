require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def setup
    @unit_item = Item.new(name: "unit name", unit_price: 1)
    @simple_item = Item.new(name: "simple name", unit_price: 2)
    @special_item = Item.new(name: "special name", unit_price: 5, special_qty: 2, special_price: 4)
    @antispecial_item = Item.new(name: "special name", unit_price: 100, special_qty: 1, special_price: -1)
    @discount_item = Item.new(name: "discount name", unit_price: -10)
    @invalid_item = Item.new(name: "", unit_price: 1)
  end

  test "valid items" do
    assert @unit_item.valid?
    assert @simple_item.valid?
    assert @special_item.valid?
    assert @discount_item.valid?
  end

  # TODO:
  # test "invalid item" do
  #   assert_not @invalid_item.valid?
  # end

  # TODO:
  # test "invalid duplicate" do
  #   @unit_item.save
  #   @dupe_item = Item.new(name: "unit name", unit_price: 1)
  #   assert_not @dupe_item.valid?
  # end

end
