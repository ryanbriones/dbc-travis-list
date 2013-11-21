require "spec_helper"

feature "Post creates post" do
  scenario "for a particular category" do
    visit "/categories"
    click_link "Create new Category"
    fill_in "Name", :with => "Test Category"
    click_button "Create Category"
    
    click_link "Create new Post"
    
    fill_in "Title", :with => "My awesome thing for sale"
    fill_in "Description", :with => "Hey, look at this sexy description. It's awesome!"
    fill_in "Email", :with => "ima.tester@example.com"
    click_button "Create Post"
    
    # open html in the browser at this point in time
    # save_and_open_page
    
    within("#posts") do
      expect(page).to have_text("My awesome thing for sale")
    end
  end
end