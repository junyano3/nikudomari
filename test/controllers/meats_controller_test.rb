require 'test_helper'

class MeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meats_new_url
    assert_response :success
  end

end
