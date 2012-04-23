require 'test_helper'

class CommssionControllerTest < ActionController::TestCase
  test "should get commission-summary" do
    get :commission-summary
    assert_response :success
  end

  test "should get members-performance" do
    get :members-performance
    assert_response :success
  end

  test "should get sales" do
    get :sales
    assert_response :success
  end

end
