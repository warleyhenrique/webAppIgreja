require 'test_helper'

class OfficesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get offices_new_url
    assert_response :success
  end

  test "should get create" do
    get offices_create_url
    assert_response :success
  end

end
