require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get welcome_inicio_url
    assert_response :success
  end

end
