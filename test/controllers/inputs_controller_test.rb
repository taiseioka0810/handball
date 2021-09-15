require "test_helper"

class InputsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inputs_new_url
    assert_response :success
  end

  test "should get show" do
    get inputs_show_url
    assert_response :success
  end

  test "should get create" do
    get inputs_create_url
    assert_response :success
  end
end
