require "spec_helper"

describe "user can submit story link" do
  let(:user) { FactoryGirl.create(:user) }
  let(:user2) { FactoryGirl.create(:user)}
  let(:story) { Story.new(link: "http://example.com") }

  it "vote up and down stories" do 
    login(user)
    click_link "Submit Story"
    fill_in "story_link", with: story.link
    click_button "Submit Story"
    login(user2)
    visit root_path
    click_link "Vote Up"
    expect(page).to have_content "1"
  end

  def login(user)
    visit "/login"
    fill_in "username", with: user.username
    fill_in "password", with: user.password
    click_button "Log In"
  end

  def logout(user)
    click_link "Log Out {user.username}"
  end
end