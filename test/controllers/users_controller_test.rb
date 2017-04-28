require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_path
    assert_response :success
  end

  test "links" do
    get new_path
    assert_select "a[href=?]", root_path
  end

end
