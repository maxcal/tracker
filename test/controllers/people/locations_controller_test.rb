require 'test_helper'

class People::LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get person_locations_url(@person, format: :json)
    assert_response :success
  end

end
