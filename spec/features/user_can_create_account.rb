require "spec_helper"

describe "user can create account" do 

  it "creates account" do
    visit root_path
    click_link "Sign Up"
    fill_in "user_username", with: "Sahil20"
    fill_in "user_email", with: "email@email.com"
    fill_in "user_password", with: "hello"
    click_button "Create Account"


    within ".user_page" do
      expect(page).to have_content "Sahil20"
    end
  end
  
end