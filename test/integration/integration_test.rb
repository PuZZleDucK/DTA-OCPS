require 'test_helper'

class IntegrationTest < ActionDispatch::IntegrationTest
  test "links" do
    get root_path
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", new_path
  end

  test "invalid signup" do
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "", password: "", password_confirmation: "" } }
    end
  end

  test "valid signup" do
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "Alice", password: "abc", password_confirmation: "abc" } }
    end
  end

end
