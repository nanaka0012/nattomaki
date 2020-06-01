require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stories_index_url
    assert_response :success
  end

  test "should get show" do
    get stories_show_url
    assert_response :success
  end

  test "should get new" do
    get stories_new_url
    assert_response :success
  end

end
