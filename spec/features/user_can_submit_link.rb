require "spec_helper"

describe "user can submit story link" do
  let(:user) { FactoryGirl.create(:user) }
  let(:story) { Story.new(link: "http://example.com") }

  it "can create a new story" do 
    login(user)
    click_link "Submit Story"
    fill_in "story_link", with: "Example.com"
    expect(page).to have_content ("Example Domain")
  end

  def login(user)
    visit root_path
    click_link "Member Log In"
    fill_in "username", with: user.username
    fill_in "password", with: user.password
    click_button "Log In"
  end
end