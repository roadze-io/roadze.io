require 'test_helper'

class FrontendPages::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get frontend_pages_user_dashboard_url
    assert_response :success
  end

end
