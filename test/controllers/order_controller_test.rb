require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get order_form_url
    assert_response :success
  end

end
