require 'test_helper'

class PersoControllerTest < ActionController::TestCase
  test "should get pretty" do
    get :pretty
    assert_response :success
  end

end
