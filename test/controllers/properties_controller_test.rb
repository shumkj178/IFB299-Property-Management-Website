require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_properties_url
    assert_response :success
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

end
