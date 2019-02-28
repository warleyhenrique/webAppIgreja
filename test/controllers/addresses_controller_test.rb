require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get addresses_index_url
    assert_response :success
  end

end
