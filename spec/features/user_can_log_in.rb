require "spec_helper"

describe "user can log in" do 

  it "can enter user and pass to log in" do
    visit root_path
    click_link "Log In"
    fill :username, with: user.username
    fill_in :password, user.password
    click_button "Log In"

    expect(page).to have_content user.username
  end

end



    
