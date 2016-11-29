require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the favorite_place path", {:type => :feature}) do
  it("processes the user entry and returns list of places entered.") do
    visit("/")
    fill_in("place", :with => "Seattle")
    click_button("Add place!")
    expect(page).to have_content("The place has been successfully submitted! Back")
  end
end
