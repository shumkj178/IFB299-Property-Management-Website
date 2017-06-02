require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information for incorrect email format" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "123abc",
                                         email: "user@invalid",
                                         contact_number: "0404123123"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for empty email" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "123abc",
                                         email: "",
                                         contact_number: "0404123123"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for first name" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "",
                                         last_name: "Shum",
                                         password: "123abc",
                                         email: "user@valid.com",
                                         contact_number: "0404123123"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for last name" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "",
                                         password: "123abc",
                                         email: "user@valid.com",
                                         contact_number: "0404123123"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for password too short" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "123ab",
                                         email: "user@valid.com",
                                         contact_number: "04041231234"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for password too long" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "1234567890abcdefghijk",
                                         email: "user@valid.com",
                                         contact_number: "0404123123"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for contact number too short" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "123abc",
                                         email: "user@valid.com",
                                         contact_number: "040412312"
      } }
    end
    assert_template 'users/new'
  end

  test "invalid signup information for contact number too long" do
    get new_users_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name:  "Sean",
                                         last_name: "Shum",
                                         password: "123abc",
                                         email: "user@valid.com",
                                         contact_number: "04041231234"
      } }
    end
    assert_template 'users/new'
  end
end
