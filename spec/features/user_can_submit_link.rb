require "spec_helper"

describe "user can submit story link" do
  let(:user) { FactoryGirl.create(:user) }
  let(:story) { Story.new(link: "example.com") }

  it "can create a new story" do 
    login(user)

  end
  

  end


  def login(user)
    visit "/login"
    fill_in :username, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end

  

end