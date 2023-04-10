require "test_helper"

class FollowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get followings_new_url
    assert_response :success
  end

  test "should get edit" do
    get followings_edit_url
    assert_response :success
  end
end
