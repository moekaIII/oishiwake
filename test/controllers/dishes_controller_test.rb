require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get dishes_inde_url
    assert_response :success
  end

end
