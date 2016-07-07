require "test_helper"

class CanSignInTest < Capybara::Rails::TestCase


    test "Can sign in" do
      @user = User.create! username: "sarah", password: "12345678"
      visit root_path
      fill_in "Username", with: "sarah"
      fill_in "Password", with: "12345678"
      click_button "Sign In"

      visit root_path
      click_link "Add A Book"
      assert_content page, "Add A New Book"


  end
end
