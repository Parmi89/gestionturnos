require 'test_helper'

class AdvertisingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advertising = advertisings(:one)
  end

  test "should get index" do
    get advertisings_url
    assert_response :success
  end

  test "should get new" do
    get new_advertising_url
    assert_response :success
  end

  test "should create advertising" do
    assert_difference('Advertising.count') do
      post advertisings_url, params: { advertising: { higdate: @advertising.higdate, lowdate: @advertising.lowdate, observations: @advertising.observations, state: @advertising.state, title: @advertising.title } }
    end

    assert_redirected_to advertising_url(Advertising.last)
  end

  test "should show advertising" do
    get advertising_url(@advertising)
    assert_response :success
  end

  test "should get edit" do
    get edit_advertising_url(@advertising)
    assert_response :success
  end

  test "should update advertising" do
    patch advertising_url(@advertising), params: { advertising: { higdate: @advertising.higdate, lowdate: @advertising.lowdate, observations: @advertising.observations, state: @advertising.state, title: @advertising.title } }
    assert_redirected_to advertising_url(@advertising)
  end

  test "should destroy advertising" do
    assert_difference('Advertising.count', -1) do
      delete advertising_url(@advertising)
    end

    assert_redirected_to advertisings_url
  end
end
