require "spec_helper"

describe Comment do
  it { should validate_presence_of(:comment) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:story) }
  it { should belong_to(:user) }
  it { should belong_to(:story) }
end