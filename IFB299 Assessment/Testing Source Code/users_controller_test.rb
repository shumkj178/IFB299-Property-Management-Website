require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get new_users_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: {user: {first_name: "Sean",
                                      last_name: "Shum",
                                      email: "sean@shum.com",
                                      password: "123456",
                                      user_type: "customer",
                                      contact_number: "0404123123"
      }}
    end

    assert_redirected_to user_url(User.last)
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: {user: {first_name: "Sean",
                                           last_name: "Shum",
                                           email: "sean@shum.com",
                                           password: "123456",
                                           user_type: "customer",
                                           contact_number: "0404123123"
    }}
    assert_redirected_to user_url(@user)
  end
end