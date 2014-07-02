require 'test_helper'

class IncomingControllerTest < ActionController::TestCase
  test "should get Controller" do
    get :Controller
    assert_response :success
  end

end
