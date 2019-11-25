require 'test_helper'

class PantallaControllerTest < ActionDispatch::IntegrationTest
  test "should get pantalla" do
    get pantalla_pantalla_url
    assert_response :success
  end

end
