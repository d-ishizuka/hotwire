require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Creating a new quote" do
    # When we visit the Quotes#index page
    # we expect to see a title with the text "Quotes"
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  # When we click on the link with the tet "New Quote"
  # we expect to land on a page with the title "New Quote"
  click_on "New Quote"
  assert_selector "h1", text: "New Quote"

  # When we fill in the name input with "Capybara Quote"
  # and we click on "Create Quote"
  fill_in "Name", with: "Capybara Quote"
  click_on "Create Quote"

  # We expect to be back on the page with the title "Quotes"
  # and to see our "Capybara Quote" in the list of quotes
  assert_selector "h1", text: "Quotes"
  assert_text "Capybara Quote"
end
