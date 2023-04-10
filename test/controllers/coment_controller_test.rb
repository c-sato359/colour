require "test_helper"

class ComentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coment_index_url
    assert_response :success
  end

  test "should get show" do
    get coment_show_url
    assert_response :success
  end

  test "should get edit" do
    get coment_edit_url
    assert_response :success
  end

  test "should get new" do
    get coment_new_url
    assert_response :success
  end
end
