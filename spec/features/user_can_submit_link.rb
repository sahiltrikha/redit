require "spec_helper"

describe "user can submit story link" do
  let(:user) { FactoryGirl.create(:user) }
  let(:story) { Story.new(link: "example.com") }

  it "can create a new story" do 
  

  end




  def login(user)
    visit '/login'
    fill :username, with: user.username
    fill_in :password, user.password
    click_button "Log In"
  end

end