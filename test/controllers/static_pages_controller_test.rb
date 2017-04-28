require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "root gets home" do
    get root_path
    assert_response :success
  end

  test "links" do
    get root_path
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", new_path
  end

end
