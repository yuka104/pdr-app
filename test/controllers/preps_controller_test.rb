require 'test_helper'

class PrepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preps_index_url
    assert_response :success
  end

end
