require "spec_helper"

describe "user can log in" do 
  subject(:user){ FactoryGirl.create(:user) }

  it "can enter user and pass to log in" do
    visit root_path
    click_link "Member Log In"
    fill_in "username", with: user.username
    fill_in "password", with: user.password
    click_button "Log In"
    expect(page).to have_content user.username
  end

end



    
