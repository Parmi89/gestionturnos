require 'test_helper'

class Landing::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get landing_welcome_home_url
    assert_response :success
  end

end
