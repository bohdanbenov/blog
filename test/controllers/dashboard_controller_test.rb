require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get dashboard_main_url
    assert_response :success
  end

  test "should get user" do
    get dashboard_user_url
    assert_response :success
  end

  test "should get blog" do
    get dashboard_blog_url
    assert_response :success
  end

end
