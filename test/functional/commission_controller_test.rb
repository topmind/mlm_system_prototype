require 'test_helper'

class CommissionControllerTest < ActionController::TestCase
  test "should get members-performance" do
    get :members-performance
    assert_response :success
  end

  test "should get sales" do
    get :sales
    assert_response :success
  end

end
