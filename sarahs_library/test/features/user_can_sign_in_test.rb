require "test_helper"

class UserCanSignInTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_content page, "Hello World"
    refute_content page, "Goodbye All!"
  end
end
