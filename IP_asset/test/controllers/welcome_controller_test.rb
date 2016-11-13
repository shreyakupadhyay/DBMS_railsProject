require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get welcome_signup_url
    assert_response :success
  end

end
