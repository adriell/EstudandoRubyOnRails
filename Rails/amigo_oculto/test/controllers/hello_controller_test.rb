require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get World" do
    get hello_World_url
    assert_response :success
  end

end
