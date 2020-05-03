require 'test_helper'

class MarketingControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get marketing_home_url
    assert_response :success
  end

  test "should get features" do
    get marketing_features_url
    assert_response :success
  end

  test "should get pricing" do
    get marketing_pricing_url
    assert_response :success
  end

  test "should get company" do
    get marketing_company_url
    assert_response :success
  end

end
