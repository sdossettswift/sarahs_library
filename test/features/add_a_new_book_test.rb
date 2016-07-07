require "test_helper"

class AddANewBookTest < Capybara::Rails::TestCase
  test "Add A Book" do
    visit root_path
    click_link('Add A Book')
    fill_in('Title', :with => 'Eat, Pray, Love')
    fill_in('Author', :with => 'Elizabeth Gilbert')
    fill_in('Price', :with => '14')
    fill_in('Photo url', :with => 'https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.buzztab.com%2Fwp-content%2Fuploads%2F2010%2F05%2FEat-Pray-Love.jpg&f=1')
    click_button "Create Book"
    assert_content page, "Book Added!"
    book = Book.find_by title: "Eat, Pray, Love"
    assert book, "Book should have existed after filling out form"

  end

end
