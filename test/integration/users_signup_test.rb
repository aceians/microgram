require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path,  user: { name:  "",
                                         email: "User@Invalid",
                                         password:              "tamu",
                                         password_confirmation: "umat" }
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path,  user: { name:  "sample",
                                         email: "user@example.com",
                                         individualrole: "Student",
                                         org:  "sdf",
                                         dept:  "computer science",
                                         password:              "verysecret",
                                         password_confirmation: "verysecret" } 
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
  
end