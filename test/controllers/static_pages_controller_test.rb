require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get neighborhoods" do
    get static_pages_neighborhoods_url
    assert_response :success
  end

end
