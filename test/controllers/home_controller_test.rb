require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get cities" do
    get home_cities_url
    assert_response :success
  end

  test "should get niehgborhoods" do
    get home_niehgborhoods_url
    assert_response :success
  end

end
