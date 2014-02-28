require "spec_helper"

describe "user can create account" do 

  it "creates account" do
    visit '/stories'
    click_link "Sign Up"
    fill_in "Username:", with: "Sahil20"
    fill_in "Email:", with: "email@email.com"
    fill_in "Password:", with: "hello"
    click_button "Create Account"


    within ".user_page" do
      expect(page).to have_content "Sahil20"
    end
  end
  
end