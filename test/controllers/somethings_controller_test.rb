require "test_helper"

class SomethingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get somethings_index_url
    assert_response :success
  end
end
