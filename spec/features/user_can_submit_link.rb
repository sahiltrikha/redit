require "spec_helper"

describe "user can submit story link" do
  let(:user) { FactoryGirl.create(:user) }
  let(:story) { Story.new(link: "example.com") }
end