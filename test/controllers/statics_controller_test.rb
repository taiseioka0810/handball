require "test_helper"

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get statics_top_url
    assert_response :success
  end

  test "should get about" do
    get statics_about_url
    assert_response :success
  end

  test "should get score" do
    get statics_score_url
    assert_response :success
  end
end
