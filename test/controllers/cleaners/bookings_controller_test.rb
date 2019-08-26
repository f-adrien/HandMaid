require 'test_helper'

class Cleaners::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cleaners_bookings_index_url
    assert_response :success
  end

end
