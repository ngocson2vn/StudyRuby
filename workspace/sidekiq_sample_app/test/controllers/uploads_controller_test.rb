require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uploads_index_url
    assert_response :success
  end

  test "should get format" do
    get uploads_format_url
    assert_response :success
  end

end
