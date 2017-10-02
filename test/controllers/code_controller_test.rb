require 'test_helper'

class CodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get code_index_url
    assert_response :success
  end

end
