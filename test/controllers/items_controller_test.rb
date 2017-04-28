require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "links" do
    get items_url
    assert_select "a[href=?]", root_path
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { name: @item.name, special_price: @item.special_price, special_qty: @item.special_qty, unit_price: @item.unit_price } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { name: @item.name, special_price: @item.special_price, special_qty: @item.special_qty, unit_price: @item.unit_price } }
    assert_redirected_to item_url(@item)
  end

end
