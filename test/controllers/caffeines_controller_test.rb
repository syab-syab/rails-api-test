require "test_helper"

class CaffeinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caffeines_index_url
    assert_response :success
  end
end
