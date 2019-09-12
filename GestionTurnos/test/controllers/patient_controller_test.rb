require 'test_helper'

class PatientControllerTest < ActionDispatch::IntegrationTest
  test "should get last_name:string" do
    get patient_last_name:string_url
    assert_response :success
  end

  test "should get first_name:string" do
    get patient_first_name:string_url
    assert_response :success
  end

  test "should get dni:integer" do
    get patient_dni:integer_url
    assert_response :success
  end

  test "should get address:string" do
    get patient_address:string_url
    assert_response :success
  end

  test "should get coverage:string" do
    get patient_coverage:string_url
    assert_response :success
  end

  test "should get observations:string" do
    get patient_observations:string_url
    assert_response :success
  end

end
