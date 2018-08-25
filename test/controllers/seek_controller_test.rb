require 'test_helper'

class SeekControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seek_index_url
    assert_response :success
  end

end
