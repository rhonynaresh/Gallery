require 'test_helper'

class MyprofileControllerTest < ActionController::TestCase
  test "should get myprofile" do
    get :myprofile
    assert_response :success
  end

end
